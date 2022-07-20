import 'package:doctor_zone_user/views/pages/medicines/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/app_constants.dart';
import '../../styles/app_colors.dart';
import '../../styles/custom_text_style.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MaterialButton(
        height: 45,
        onPressed: (){
          Get.to(() => PaymentMethod());
        },
        minWidth: double.infinity,
        color: AppColors.primaryColor,
        child: Text("Continue to Pay",style: CustomTextStyle.boldTextStyle(color: Colors.white),),
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
        title: Text("Confirm Order",style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            child: Text("Delivery At",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Icon(Icons.home, color: AppColors.primaryColor,size: 32,),
                ),
                SizedBox(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Home",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                      const SizedBox(height: 10,),
                      Text("14134, Silver Green Street, 2nd Avenue, Hemiltone, New York, USA",style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            child: Text("Items in cart",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Salosphir 100mg Tablet", style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.secondaryColor),),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Text("2 packs", style: CustomTextStyle.ultraSmallTextStyle(color: AppColors.disableButtonColor),),
                    const Spacer(),
                    Text("₹ 6.0", style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.secondaryColor),)
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Salosphir 100mg Tablet", style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.secondaryColor),),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Text("2 packs", style: CustomTextStyle.ultraSmallTextStyle(color: AppColors.disableButtonColor),),
                    const Spacer(),
                    Text("₹ 6.0", style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.secondaryColor),)
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Salosphir 100mg Tablet", style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.secondaryColor),),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Text("2 packs", style: CustomTextStyle.ultraSmallTextStyle(color: AppColors.disableButtonColor),),
                    const Spacer(),
                    Text("₹ 6.0", style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.secondaryColor),)
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset("assets/ic_prescription.png",height: 30,),
                  const SizedBox(width: 10,),
                  Text("Prescription Uploaded",style: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor),),
                  const Spacer(),
                  const Icon(Icons.remove_red_eye, color: AppColors.primaryColor,),
                  const SizedBox(width: 20,),
                  const Icon(Icons.delete, color: AppColors.primaryColor,),

                ],
              ),
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Sub Total",style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.disableButtonColor),),
                    const Spacer(),
                    Text("₹ 18.00",style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.disableButtonColor),)
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Promo Code Applied",style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.disableButtonColor),),
                    const Spacer(),
                    Text("- ₹ 2.00",style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.disableButtonColor),)
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Service Charge",style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.disableButtonColor),),
                    const Spacer(),
                    Text("₹ 4.00",style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.disableButtonColor),)
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Amount to Pay",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                    const Spacer(),
                    Text("₹ 20.00",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),)
                  ],
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
