import 'package:doctor_zone_user/controller/medicine/medicine_controller.dart';
import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/pages/medicines/cart.dart';
import 'package:doctor_zone_user/views/pages/medicines/reviews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../styles/app_colors.dart';
import '../../styles/custom_text_style.dart';

class MedicineDetailPage extends StatelessWidget {
  final MedicineController _medicineController = Get.put(MedicineController());
  MedicineDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MaterialButton(
        height: 45,
        onPressed: (){
          _medicineController.cartList
              .add(_medicineController.id);
        },
        minWidth: double.infinity,
        color: AppColors.primaryColor,
        child: Text("Add to Cart",style: CustomTextStyle.boldTextStyle(color: Colors.white),),
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
        actions: [
          const Icon(Icons.bookmark_border_rounded,color: AppColors.secondaryColor,),
          InkWell(
            onTap: (){
              Get.to(const CartPage());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
              child: Stack(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.add_shopping_cart,color: AppColors.secondaryColor,)
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.red,
                        child: Obx(() => Text(_medicineController.cartList.length.toString(),style: CustomTextStyle.ultraSmallTextStyle(color: Colors.white),),
                        )
                      )
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(_medicineController.imageUrl.toString()),
              _medicineController.prescriptionRequired.value == true?
              Positioned(
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset("assets/ic_prescription.png",width: 25,),
                ),
              ) :
                  Container()
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(_medicineController.title.toString(),style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                    const Spacer(),
                    Icon(Icons.star,color: Colors.yellow[900],),
                    Text("4.5",style: CustomTextStyle.boldMediumTextStyle(color: Colors.yellow.shade900),)
                  ],
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    Get.to(() => const ReviewPage());
                  },
                  child: Row(
                    children: [
                      Text("Health Care",style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                      const Spacer(),
                      Text("Read all 125 reviews",style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                      const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.disableButtonColor,size: 14,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 7,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Description",style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                const SizedBox(height: 10,),
                Text("Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book.",style: CustomTextStyle.smallTextStyle1(color: AppColors.secondaryColor),)
              ],
            ),
          ),
          const SizedBox(height: 7,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sold By",style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset("assets/img_orderplaced.png",width: 60,)),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Well Life Store",style: CustomTextStyle.smallBoldTextStyle1(color: AppColors.secondaryColor),),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            const Icon(Icons.add_location,color: AppColors.disableButtonColor,size: 14,),
                            Text("Wellington Bridge",style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        const SizedBox(height: 22,),
                        Row(
                          children: [
                            Text("View Profile",style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                            const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.disableButtonColor,size: 14,),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 7,),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            child: Row(
              children: [
                Text("\$ 3.50",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.secondaryColor),),
                const Spacer(),
                Text("Pack of 8",style: CustomTextStyle.smallTextStyle1(color: AppColors.disableButtonColor),),
                const Icon(Icons.keyboard_arrow_down,color: AppColors.disableButtonColor,)
              ],
            ),
          ),

        ],
      ),
    );
  }
}
