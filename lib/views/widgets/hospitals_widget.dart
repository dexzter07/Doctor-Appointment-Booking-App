import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
class HospitalWidget extends StatelessWidget {
  const HospitalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text("Apple Hospital",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                  Text("General Hospital", style: CustomTextStyle.smallTextStyle1(color:AppColors.disableButtonColor),),
                ],
              ),
              const SizedBox(width: 90,),
              Container(
                margin: const EdgeInsets.all(2),
                height: 30,
                width: 50,
                color: Colors.green,
              ),
              Container(
                margin: const EdgeInsets.all(2),
                height: 30,
                width: 50,
                color: Colors.green,
              ),
              Container(
                margin: const EdgeInsets.all(2),
                height: 30,
                width: 50,
                color: Colors.green,
              ),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.add_location,size: 12, color: AppColors.disableButtonColor,),
              Text("Walter Street, Wellington, New York", style: CustomTextStyle.ultraSmallTextStyle(color:AppColors.disableButtonColor),),
              const SizedBox(width: 130,),
              const Icon(Icons.call,size: 12, color: Colors.blue,),
              Text("Call", style: CustomTextStyle.ultraSmallBoldTextStyle(color:Colors.blue),),
            ],
          )
        ],
      ),
    );
  }
}
