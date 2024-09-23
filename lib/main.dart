import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/core/routing/app_router.dart';
import 'package:test/store.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(StoreApp(appRouter: AppRouter(),));
}




