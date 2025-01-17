import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/features/home/views/widgets/add_to_cart_circle.dart';
import 'package:test/features/home/views/widgets/add_to_favourites_circle.dart';
import 'package:test/core/helper/app_images.dart';
import 'package:test/core/helper/spacing.dart';
import 'package:test/core/theming/app_colors.dart';
import 'package:test/core/theming/app_text_styles.dart';

class SkeleProduct extends StatelessWidget {
  const SkeleProduct({super.key});

  @override
  Widget build(BuildContext context) {
     return Stack(
      children: [
        Card(
          color: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2, color: Colors.blue),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8)),
                child:Image.asset(AppImages.splashLogo, height: 110.h,
                  width: double.infinity,
                  fit: BoxFit.cover,),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12.w, 8.h, 12.w, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                     Text(
                      'productModel',
                       maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:AppTextStyles.textBlack(16, FontWeight.w700),
                    ),
                    Text(
                      'productModel productModel!.desc!',
                      style:AppTextStyles.textBlack(15, FontWeight.w600),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                   verticalSpace(3),
                     Text('EGB 1,000',style: AppTextStyles.textBlack(13, FontWeight.w400),),
                     verticalSpace(3),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Review',style:AppTextStyles.textBlack(12, FontWeight.w400)),
                            Text('(222)',style:AppTextStyles.textBlack(12, FontWeight.w400)),
                            Icon(Icons.star,color: AppColors.amberColor,size: 22.r,)
                          ],
                        ),
                       horizontalSpace(10),
                        const AddToCartCircle()
                      ],
                    ),
                 
                  ],
                ),
              ),
            ],
          ),
        ),
        const AddToFavouriteCircle(),
      ],
    );
  }
}