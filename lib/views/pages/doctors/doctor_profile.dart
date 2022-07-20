import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/pages/doctors/doctor_feedback.dart';
import 'package:doctor_zone_user/views/pages/doctors/doctor_timing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../styles/app_colors.dart';
import '../../styles/custom_text_style.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MaterialButton(
        height: 45,
        onPressed: (){
          Get.to(() => DoctorTiming());
        },
        minWidth: double.infinity,
        color: AppColors.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.edit_calendar,color: Colors.white,),
            const SizedBox(width: 10,),
            Text("Book Appointment Now",style: CustomTextStyle.boldTextStyle(color: Colors.white),),
          ],
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/DoctorsLists/search_doc_1.png"),
                    const SizedBox(width: 35,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Text("Experience",style: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor),),
                        Text("22 years",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                        const SizedBox(height: 30,),
                        Text("Consultancy Fees",style: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor),),
                        Text("₹ 200",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text("Dr. Joseph Williamson", style: CustomTextStyle.ultraBoldTextStyle(color: AppColors.secondaryColor,letterSpacing: 1),)),
                        const SizedBox(height: 10,),
                        Text("Cardiac Surgeon",style: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor),),

                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(() => DoctorFeedback());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Feedbacks",style: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor),),
                              const SizedBox(height: 5,),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow[800],size: 15,),
                                  Text("4.5",style: CustomTextStyle.boldMediumTextStyle(color: Colors.yellow.shade800),),
                                  const SizedBox(width: 5,),
                                  Text("(124)",style: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor),),
                                  const SizedBox(width: 40,),
                                  const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.disableButtonColor, size: 15,)
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Availability",style: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor),),
                            const SizedBox(width: 45,),
                            const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.disableButtonColor, size: 15,)
                          ],
                        ),
                        Text("12:00 - 13:00",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding, vertical: AppConstants.screenVerticalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Services At",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),),
                const SizedBox(height: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Apple Hospital",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                        const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.secondaryColor,size: 20,)
                      ],
                    ),
                    Text("JJ Towers Johnson Street, Hamilton, New York",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),),
                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Seven Star Clinic",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                        const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.secondaryColor,size: 20,)
                      ],
                    ),
                    Text("JJ Towers Johnson Street, Hamilton, New York",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),),
                  ],
                ),
                const SizedBox(height: 10,),
                Text("+1 More",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.primaryColor),)
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding, vertical: AppConstants.screenVerticalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Services",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text("Hypertension Treatment",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text("COPD Treatment",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text("Hypertension Treatment",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text("COPD Treatment",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
}
