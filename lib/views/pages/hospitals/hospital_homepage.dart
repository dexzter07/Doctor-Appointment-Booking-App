import 'package:doctor_zone_user/models/category_models.dart';
import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:doctor_zone_user/views/widgets/custom_category_widget.dart';
import 'package:doctor_zone_user/views/widgets/custom_seller_widget.dart';
import 'package:doctor_zone_user/views/widgets/hospitals_widget.dart';
import 'package:doctor_zone_user/views/widgets/offers_widgets.dart';
import 'package:flutter/material.dart';

import '../../../models/offer_models.dart';
import '../../../models/seller_models.dart';
import '../../widgets/custom_silver_grid_delegate.dart';

class HospitalHomePage extends StatelessWidget {
  final List<CategoryModel> _categoryList = [
    CategoryModel(
      imageUrl: "assets/DoctorCategory/Doctors.png",
    ),
    CategoryModel(
      imageUrl: "assets/DoctorCategory/Therapist.png",
    ),
    CategoryModel(
      imageUrl: "assets/DoctorCategory/Dentists.png",
    ),
    CategoryModel(
      imageUrl: "assets/DoctorCategory/Ayurvedic.png",
    ),

  ];

  final List<OfferModel> _offerList = [
    OfferModel(
      imageUrl: "assets/images/category/otc_medicine.png",
    ),
    OfferModel(
      imageUrl: "assets/images/category/diabetes_medicine.png",
    ),
    OfferModel(
      imageUrl: "assets/images/category/baby_mother.png",
    ),
    OfferModel(
      imageUrl: "assets/images/category/personal_care.png",
    ),
    OfferModel(
      imageUrl: "assets/images/category/diabetes_medicine.png",
    ),

  ];

  HospitalHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: ListView(
            children:  [
              const SizedBox(height: 20,),
              Row(
                children: [
                  const Icon(Icons.add_location, color: AppColors.primaryColor,),
                  const SizedBox(width: 20,),
                  Text("Kolkata", style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),

                ],
              ),
              const SizedBox(height: 20,),
              Text("Hello, Sam Smith,",style: CustomTextStyle.bigTextStyle(color:AppColors.disableButtonColor)),
              const SizedBox(height: 10,),
              Text("Find Hospital,",style: CustomTextStyle.ultraBoldTextStyle1(color: AppColors.secondaryColor, letterSpacing: 1)),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[100],
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    hintText: "Search Hospital Clinics, Health Center",
                    hintStyle: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor)
                ),

              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Text("Search By Category", style: CustomTextStyle.mediumTextStyle(color:AppColors.disableButtonColor),),
                  const Spacer(),
                  Text("View All", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.primaryColor))
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 170,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _categoryList.length,
                    itemBuilder: (context, index) {
                      return CustomCategoryWidget(
                        categoryModel: _categoryList[index],
                      );
                    }),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Text("Hospitals near you", style: CustomTextStyle.mediumTextStyle(color:AppColors.disableButtonColor),),
                  const Spacer(),
                  const Icon(Icons.map, color: AppColors.disableButtonColor,)
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                color: AppColors.backgroundColor,
                height: 300,
                child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index){
                      return const HospitalWidget();
                    }
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
