import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test/core/failure/failure.dart';
import 'package:test/features/home/data/models/product_model.dart';
import 'package:test/features/home/data/repos/product_repo.dart';
import 'package:test/features/home/data/services/product_service.dart';

class ProductRepoImpl implements ProductRepo {
  ProductService productService = ProductService(dio: Dio());
  List<ProductModel> products = [];
  @override
  Future<Either<ServerFailure, List<ProductModel>>> fetchProducts() async {
    try {
      var data = await productService.getProducts();
      for (var product in data) {
        products.add(ProductModel.fromJson(product));
      }
      return right(products);
    } on DioError catch (e) {
      return left(ServerFailure.fromDioError(e));
    }
  }
}
