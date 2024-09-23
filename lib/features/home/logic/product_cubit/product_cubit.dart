import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:test/core/failure/failure.dart';
import 'package:test/features/home/data/models/product_model.dart';
import 'package:test/features/home/data/repos/product_repo_impl.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());
  ProductRepoImpl productRepoImpl = ProductRepoImpl();

  fetchProducts() async {
    emit(ProductLoadingState());
    try {
      var result = await productRepoImpl.fetchProducts();
      result.fold(
          (failure) =>
              emit(FailedToGetProductState(errMessage: failure.errMessage)),
          (products) => emit(ProductSuccessState(products: products)));
    } on DioError catch (e) {
      emit(FailedToGetProductState(
          errMessage: ServerFailure.fromDioError(e).errMessage));
    }
  }
}
