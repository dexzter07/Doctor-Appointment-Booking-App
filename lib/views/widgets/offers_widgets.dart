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
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Image.asset(offerModel!.imageUrl.toString(),fit: BoxFit.cover,),
    );
  }
}
