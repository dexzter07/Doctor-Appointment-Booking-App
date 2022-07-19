import 'package:doctor_zone_user/models/category_models.dart';
import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomCategoryWidget extends StatelessWidget {
  final CategoryModel? categoryModel;
  const CustomCategoryWidget({Key? key, this.categoryModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppConstants.screenVerticalPadding,horizontal: AppConstants.screenHorizontalPadding),
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 4),
      width: 110,
      height: 100,
      decoration: BoxDecoration(
        color: categoryModel!.color,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Text(categoryModel!.title.toString(), style: CustomTextStyle.mediumTextStyle(color: AppColors.backgroundColor),),
          const Spacer(),
          Image.asset(categoryModel!.imageUrl.toString(),width: 100, height: 80 ,fit: BoxFit.cover,),
        ],
      ),
    );
  }
}
