import 'package:doctor_zone_user/models/category_models.dart';
import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/pages/medicines/medicine_list.dart';
import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCategoryWidget extends StatelessWidget {
  final CategoryModel? categoryModel;
  const CustomCategoryWidget({Key? key, this.categoryModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(const MedicineList());
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.asset(categoryModel!.imageUrl.toString(),fit: BoxFit.cover,),
      ),
    );
  }
}
