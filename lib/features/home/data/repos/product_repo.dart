import 'package:dartz/dartz.dart';
import 'package:test/core/failure/failure.dart';
import 'package:test/features/home/data/models/product_model.dart';

abstract class ProductRepo {
  Future<Either<ServerFailure,List<ProductModel>>> fetchProducts();
}
