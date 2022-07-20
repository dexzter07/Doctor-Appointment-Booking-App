import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../styles/app_colors.dart';
import '../../styles/custom_text_style.dart';

class AppointmentDetails extends StatelessWidget {
  const AppointmentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Row(
        children: [
          MaterialButton(
            height: 45,
            onPressed: (){

            },
            minWidth: Get.width * 0.5,
            color: Colors.white,
            child: Row(
              children: [
                const Icon(Icons.call,color: AppColors.primaryColor,),
                const SizedBox(width: 20,),
                Text("Call",style: CustomTextStyle.boldTextStyle(color: AppColors.primaryColor),),
              ],
            ),
          ),
          MaterialButton(
            height: 45,
            onPressed: (){

            },
            minWidth: Get.width * 0.5,
            color: AppColors.primaryColor,
            child: Row(
              children: [
                const Icon(Icons.message,color: Colors.white,),
                const SizedBox(width: 20,),
                Text("Chat",style: CustomTextStyle.boldTextStyle(color: Colors.white),),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios,color: AppColors.secondaryColor,)),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Appointment Details",style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
        centerTitle: true,
        actions: const [
          Icon(Icons.more_vert,color: AppColors.primaryColor,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/DoctorsLists/search_doc_1.png"),
                    const SizedBox(width: 35,),
                    SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Text("Dr. Joseph Williamson",style: CustomTextStyle.boldTextStyle(color: AppColors.secondaryColor),),
                          const SizedBox(height: 10,),
                          Text("Cardiac Surgeon at Apple Hospital",style: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor),),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Text("Appointment on",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text("12 July 2022",style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
                Text("|",style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
                Text("12:00 pm",style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
              ],
            ),
            const SizedBox(height: 30,),
            Text("Location",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),),
            const SizedBox(height: 10,),
            Text("Apple Hospital",style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
            Row(
              children: [
                Text("Walter Street, Wellington, New York",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),),
                const Spacer(),
                const Icon(Icons.directions,color: AppColors.primaryColor,)
              ],
            ),
            const SizedBox(height: 30,),
            Text("Appointment For",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.disableButtonColor),),
            const SizedBox(height: 10,),
            Text("Chest Pain",style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
          ],
        ),
      ),
    );
  }
}
