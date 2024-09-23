import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/product_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:const Text('Home Page'),backgroundColor: Colors.transparent,elevation: 0,),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child:const ProductsGridView(),
        ));
  }
}
