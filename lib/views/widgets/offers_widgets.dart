import 'package:doctor_zone_user/models/category_models.dart';
import 'package:doctor_zone_user/models/offer_models.dart';
import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomOfferWidget extends StatelessWidget {
  final OfferModel? offerModel;
  const CustomOfferWidget({Key? key, this.offerModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppConstants.screenVerticalPadding,horizontal: AppConstants.screenHorizontalPadding),
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 4),
      width: 210,
      height: 120,
      decoration: BoxDecoration(
          color: offerModel!.color,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          SizedBox(
            width:80,
            child: Wrap(children: [
              Text(offerModel!.title.toString(), style: CustomTextStyle.mediumTextStyle(color: AppColors.backgroundColor),)
            ]),
          ),
          const Spacer(),
          Image.asset(offerModel!.imageUrl.toString(),width: 100, height: 40 ,fit: BoxFit.cover,),
        ],
      ),
    );
  }
}
