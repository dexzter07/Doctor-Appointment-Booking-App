import 'package:doctor_zone_user/controller/medicine/medicine_controller.dart';
import 'package:doctor_zone_user/models/category_models.dart';
import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/pages/medicines/cart.dart';
import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:doctor_zone_user/views/widgets/custom_category_widget.dart';
import 'package:doctor_zone_user/views/widgets/custom_seller_widget.dart';
import 'package:doctor_zone_user/views/widgets/offers_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../models/offer_models.dart';
import '../../../models/seller_models.dart';
import '../../widgets/custom_silver_grid_delegate.dart';

class HomePage extends StatelessWidget {
  final MedicineController _medicineController = Get.put(MedicineController());
  final List<CategoryModel> _categoryList = [
    CategoryModel(
        imageUrl: "assets/Categories/Otc.png",
        ),
    CategoryModel(
      imageUrl: "assets/Categories/diabetes_medicine.png",
    ),
    CategoryModel(
      imageUrl: "assets/Categories/baby_mother.png",
    ),
    CategoryModel(
      imageUrl: "assets/Categories/personal_care.png",
    ),
    CategoryModel(
      imageUrl: "assets/Categories/wellness_item.png",
    ),

  ];

  final List<OfferModel> _offerList = [
    OfferModel(
      imageUrl: "assets/HomeBanner/Banner1.png",
    ),
    OfferModel(
      imageUrl: "assets/HomeBanner/Banner2.png",
    ),

  ];
  final List<SellerModel> _sellerList = [
    SellerModel(
      imageUrl: "assets/images/category/otc_medicine.png",
      title: "Well Life Storage",
      location: "Wellington Bridge",
      color: const Color(0xff4cd1bc),
    ),
    SellerModel(
      imageUrl: "assets/images/category/diabetes_medicine.png",
      title: "Well Life Storage",
        location: "Wellington Bridge",
      color: const Color(0xff9ae571),
    ),
    SellerModel(
      imageUrl: "assets/images/category/baby_mother.png",
      title: "Well Life Storage",
        location: "Wellington Bridge",
      color: const Color(0xfffc9881),
    ),
    SellerModel(
      imageUrl: "assets/images/category/personal_care.png",
      title: "Well Life Storage",
        location: "Wellington Bridge",
      color: const Color(0xff71b4fb),
    ),
    SellerModel(
      imageUrl: "assets/images/category/diabetes_medicine.png",
      title: "Well Life Storage",
        location: "Wellington Bridge",
      color: const Color(0xff4cd1bc),
    ),

  ];
  HomePage({Key? key}) : super(key: key);

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
                  Image.asset("assets/location_pin.png",height: 20,fit: BoxFit.cover,),
                  const SizedBox(width: 20,),
                  Text("Kolkata", style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
                  const Spacer(),
                  InkWell(
                    onTap: (){
                      Get.to(CartPage());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                      child: Stack(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.add_shopping_cart,)
                          ),
                          Positioned(
                              top: 0,
                              right: 0,
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.red,
                                child: Obx(() => Text(_medicineController.cartList.length.toString(),style: CustomTextStyle.ultraSmallTextStyle(color: Colors.white),),
                              ))
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Text("Hello, Sam Smith,",style: CustomTextStyle.bigTextStyle(color:AppColors.disableButtonColor)),
              const SizedBox(height: 10,),
              Text("Find your medicines,",style: CustomTextStyle.ultraBoldTextStyle1(color: AppColors.secondaryColor, letterSpacing: 1)),
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
                    hintText: "Search medicines",
                    hintStyle: CustomTextStyle.mediumTextStyle(color: AppColors.disableButtonColor)
                  ),

                ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Text("Shop By Category", style: CustomTextStyle.mediumTextStyle(color:AppColors.disableButtonColor),),
                  const Spacer(),
                  InkWell(
                      onTap: (){
                      },
                      child: Text("View All", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.primaryColor)))
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
                  Text("Offers", style: CustomTextStyle.mediumTextStyle(color:AppColors.disableButtonColor),),
                  const Spacer(),
                  Text("View All", style: CustomTextStyle.boldMediumTextStyle(color: AppColors.primaryColor))
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 120,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _offerList.length,
                    itemBuilder: (context, index) {
                      return CustomOfferWidget(
                        offerModel: _offerList[index],
                      );
                    }),
              ),
              const SizedBox(height: 20,),
              Text("Seller Near You", style: CustomTextStyle.mediumTextStyle(color:AppColors.disableButtonColor),),
              const SizedBox(height: 20,),
              SizedBox(
                height: 110,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _sellerList.length,
                    itemBuilder: (context, index) {
                      return CustomSellerWidget(
                        sellerModel: _sellerList[index],
                      );
                    }),
              ),
              SizedBox(
                height: 110,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _sellerList.length,
                    itemBuilder: (context, index) {
                      return CustomSellerWidget(
                        sellerModel: _sellerList[index],
                      );
                    }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
