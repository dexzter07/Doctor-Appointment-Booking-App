import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/pages/medicines/payment_method.dart';
import 'package:doctor_zone_user/views/widgets/cart_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../styles/app_colors.dart';
import '../../styles/custom_text_style.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MaterialButton(
        height: 45,
        onPressed: (){
          Get.to(PaymentMethod());
        },
        minWidth: double.infinity,
        color: AppColors.primaryColor,
        child: Row(
          children: [
            const Spacer(),
            Text("Checkout",style: CustomTextStyle.boldTextStyle(color: Colors.white),),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
          ],
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Cart", style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios,color: AppColors.secondaryColor,)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return CartWidget();
              },
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset("assets/ic_prescription.png",height: 30,),
                  const SizedBox(width: 10,),
                  InkWell(
                      onTap: (){
                        Get.defaultDialog(
                          title: "",
                          content: Column(
                            children: [
                              Image.asset("assets/upload_prescription.png",width: 200,),
                              const SizedBox(height: 10,),
                              Text("Prescription Required",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.primaryColor),),
                              SizedBox(
                                width: 200,
                                  child: Text("Your Order Contains 2 Items which required Doctors Prescription.", textAlign: TextAlign.center,style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.disableButtonColor),)),
                              const SizedBox(height: 10,),
                              MaterialButton(
                                onPressed: (){

                                },
                                minWidth: Get.width * 0.5,
                                color: AppColors.primaryColor,
                                child: Text("Upload Prescription",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.white),),
                              ),
                              const SizedBox(height: 10,),
                              Text("Cancel",style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.primaryColor),),

                            ],
                          )
                        );
                      },
                      child: Text("Upload Prescription",style: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor),)),
                  const Spacer(),
                  const Icon(Icons.remove_red_eye, color: AppColors.primaryColor,),
                  const SizedBox(width: 20,),
                  const Icon(Icons.delete, color: AppColors.primaryColor,),

                ],
              ),
            ),
          ),
          const SizedBox(height: 7,),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[100],
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.disableButtonColor)
                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.disableButtonColor)
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(top: 18,right: 8),
                              child: Text("VIEW OFFERS",style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.primaryColor),),
                            ),
                            hintText: "Add Promocode",
                            hintStyle: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor)
                        ),

                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 55,
                    color: AppColors.primaryColor,
                    child: Icon(Icons.check,color: Colors.white,),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Amount Payable",style: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor),),
                  const Icon(Icons.help_outline, color: AppColors.primaryColor,),
                  const Spacer(),
                  Text("\$ 20",style: CustomTextStyle.boldTextStyle(color: AppColors.secondaryColor),),
                ],
              ),
            ),
          ),
          const SizedBox(height: 50,)

        ],
      ),

    );
  }
}
