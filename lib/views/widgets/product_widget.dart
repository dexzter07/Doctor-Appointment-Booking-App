import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Image.asset("assets/Medicines/11.png"),
          Wrap(
            children: [
              Text("Salospir 100mg Tablet",style: CustomTextStyle.mediumTextStyle(color: AppColors.secondaryColor),),
            ],
          ),
          Expanded(child: const SizedBox()),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10))
              ),
              child: const Icon(Icons.add,color: Colors.white,),
            ),
          )
        
        ],
      ),
    );
  }
}
