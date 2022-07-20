import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/pages/doctors/doctor_profile.dart';
import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorWidget extends StatelessWidget {
  const DoctorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(() =>DoctorProfile());
      },
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding, vertical: AppConstants.screenVerticalPadding),
        color: Colors.white,
        child: Row(
          children: [
            Image.asset("assets/DoctorsLists/search_doc_1.png",width: 70,),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dr. Joseph Williamson", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                Text("Cardiac Surgeon of Apple Hospital", style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Row(
                      children: [
                        Text("Exp.", style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                        Text("22 years", style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.secondaryColor),),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Row(
                      children: [
                        Text("Fees", style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                        Text("₹ 200", style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.secondaryColor),),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellow[900],size: 15,),
                        Icon(Icons.star,color: Colors.yellow[900],size: 15,),
                        Icon(Icons.star,color: Colors.yellow[900],size: 15,),
                        Icon(Icons.star,color: Colors.yellow[900],size: 15,),
                        Icon(Icons.star,color: Colors.grey[500],size: 15,),
                        const SizedBox(width: 5,),
                        Text("(225)", style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.disableButtonColor),),
                      ],
                    ),
                  ],
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
