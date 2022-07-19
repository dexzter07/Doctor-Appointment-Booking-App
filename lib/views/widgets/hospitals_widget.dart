import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
class HospitalWidget extends StatelessWidget {
  const HospitalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(4.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Apple Hospital",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                  Text("General Hospital", style: CustomTextStyle.smallTextStyle1(color:AppColors.disableButtonColor),),
                ],
              ),
              Row(
                children: [
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

            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const Icon(Icons.add_location,size: 12, color: AppColors.disableButtonColor,),
              Text("Walter Street, Wellington, New York", style: CustomTextStyle.ultraSmallTextStyle(color:AppColors.disableButtonColor),),
              const SizedBox(width: 100,),
              const Icon(Icons.call,size: 16, color: Colors.blue,),
              const SizedBox(width: 10,),
              Text("Call", style: CustomTextStyle.smallBoldTextStyle1(color:Colors.blue),),
            ],
          )
        ],
      ),
    );
  }
}
