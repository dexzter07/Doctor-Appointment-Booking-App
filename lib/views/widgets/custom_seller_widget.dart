import 'package:doctor_zone_user/models/category_models.dart';
import 'package:doctor_zone_user/models/seller_models.dart';
import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomSellerWidget extends StatelessWidget {
  final SellerModel? sellerModel;
  const CustomSellerWidget({Key? key, this.sellerModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppConstants.screenVerticalPadding,horizontal: AppConstants.screenHorizontalPadding),
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 4),
      width: 250,
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
                color: sellerModel!.color,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset(sellerModel!.imageUrl.toString(),width: 50, height: 50 ,fit: BoxFit.cover,)),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(sellerModel!.title.toString(),style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    const Icon(Icons.add_location,color: AppColors.disableButtonColor,size: 18,),
                    Text(sellerModel!.location.toString(),style: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
