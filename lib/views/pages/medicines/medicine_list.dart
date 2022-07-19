import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_silver_grid_delegate.dart';
import '../../widgets/product_widget.dart';

class MedicineList extends StatelessWidget {
  const MedicineList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios,color: AppColors.secondaryColor,)),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Health Care",style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
            child: Stack(
              children: const [
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.add_shopping_cart,color: AppColors.secondaryColor,)
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Text("1",style: TextStyle(color: Colors.white),),
                    )
                )
              ],
            ),
          ),
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding, vertical: AppConstants.screenVerticalPadding),
        child: GridView.builder(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
              crossAxisCount: 2,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return ProductWidget(

              );
            }),
      ),
    );
  }
}
