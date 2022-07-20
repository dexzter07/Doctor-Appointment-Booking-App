import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import '../styles/app_colors.dart';
import '../styles/custom_text_style.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      padding:  const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding, vertical: AppConstants.screenVerticalPadding),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset("assets/Medicines/11.png", width: 80,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Salospir 100mg Tablet", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
              const SizedBox(height: 5,),
              Text("Pack of 500 gm", style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
              const SizedBox(height: 5,),
              Row(
                children: [
                  const Icon(Icons.remove,color: AppColors.primaryColor,size: 18,),
                  const SizedBox(width: 10,),
                  Text("1",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                  const SizedBox(width: 10,),
                  const Icon(Icons.add,color: AppColors.primaryColor,size: 18,),
                ],
              )
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset("assets/ic_prescription.png",width: 20,),
              const SizedBox(height: 30,),
              Text("\$ 3.50",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
            ],
          ),

        ],
      ),
    );
  }
}
