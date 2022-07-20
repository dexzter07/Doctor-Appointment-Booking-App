import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/pages/appointment/appointment_details.dart';
import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 35,),
            Container(
              padding: const EdgeInsets.all(15),
                color: Colors.white,
                child: Text("My Appointments",textAlign: TextAlign.center,style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),)),
            Container(
                padding: const EdgeInsets.all(15),
                child: Text("Upcoming",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),)),
            InkWell(
              onTap: (){
                Get.to(() => AppointmentDetails());
              },
              child: Container(
                margin: EdgeInsets.all(4),
                  padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Image.asset("assets/DoctorsLists/search_doc_1.png",width: 70,),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width:277,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Dr. Angelina Taylor",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                                const Icon(Icons.more_vert,color: AppColors.primaryColor,)
                              ],
                            ),
                          ),
                          Text("Cardiac Surgeon at Apple Hospital",style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("23 July 2020 | ",style: CustomTextStyle.smallTextStyle1(color: AppColors.secondaryColor),),
                              Text("12:00 pm",style: CustomTextStyle.smallTextStyle1(color: AppColors.secondaryColor),),
                              const SizedBox(width: 46,),
                              const Icon(Icons.call,color: AppColors.primaryColor,),
                              const SizedBox(width: 46,),
                              const Icon(Icons.message, color:AppColors.primaryColor,)
                            ],
                          ),

                        ],
                      )
                    ],
                  )
              ),
            ),
            Container(
                margin: EdgeInsets.all(4),
                padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset("assets/DoctorsLists/search_doc_2.png",width: 70,),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width:277,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Dr. Joseph Williamson",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                              const Icon(Icons.more_vert,color: AppColors.primaryColor,)
                            ],
                          ),
                        ),
                        Text("Cardiac Surgeon at Operum Clinic",style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("23 July 2020 | ",style: CustomTextStyle.smallTextStyle1(color: AppColors.secondaryColor),),
                            Text("12:00 pm",style: CustomTextStyle.smallTextStyle1(color: AppColors.secondaryColor),),
                            const SizedBox(width: 46,),
                            const Icon(Icons.call,color: AppColors.primaryColor,),
                            const SizedBox(width: 46,),
                            const Icon(Icons.message, color:AppColors.primaryColor,)
                          ],
                        ),

                      ],
                    )
                  ],
                )
            ),
            Container(
                padding: const EdgeInsets.all(15),
                child: Text("Past",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),)),
            Container(
                margin: EdgeInsets.all(4),
                padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset("assets/DoctorsLists/search_doc_1.png",width: 70,),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width:277,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Dr. Angelina Taylor",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                              const Icon(Icons.more_vert,color: AppColors.primaryColor,)
                            ],
                          ),
                        ),
                        Text("Cardiac Surgeon at Apple Hospital",style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("23 June 2020 | ",style: CustomTextStyle.smallTextStyle1(color: AppColors.secondaryColor),),
                            Text("12:00 pm",style: CustomTextStyle.smallTextStyle1(color: AppColors.secondaryColor),),
                            const SizedBox(width: 43,),
                            const Icon(Icons.call,color: AppColors.primaryColor,),
                            const SizedBox(width: 43,),
                            const Icon(Icons.message, color:AppColors.primaryColor,)
                          ],
                        ),

                      ],
                    )
                  ],
                )
            ),
            Container(
                margin: EdgeInsets.all(4),
                padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset("assets/DoctorsLists/search_doc_2.png",width: 70,),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width:277,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Dr. Joseph Williamson",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                              const Icon(Icons.more_vert,color: AppColors.primaryColor,)
                            ],
                          ),
                        ),
                        Text("Cardiac Surgeon at Operum Clinic",style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("23 June 2020 | ",style: CustomTextStyle.smallTextStyle1(color: AppColors.secondaryColor),),
                            Text("12:00 pm",style: CustomTextStyle.smallTextStyle1(color: AppColors.secondaryColor),),
                            const SizedBox(width: 43,),
                            const Icon(Icons.call,color: AppColors.primaryColor,),
                            const SizedBox(width: 43,),
                            const Icon(Icons.message, color:AppColors.primaryColor,)
                          ],
                        ),

                      ],
                    )
                  ],
                )
            ),

          ],
        ),
      ),
    );
  }
}
