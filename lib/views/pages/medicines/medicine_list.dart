import 'package:doctor_zone_user/controller/medicine/medicine_controller.dart';
import 'package:doctor_zone_user/models/product_model.dart';
import 'package:doctor_zone_user/views/constants/app_constants.dart';
import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_silver_grid_delegate.dart';
import '../../widgets/product_widget.dart';
import 'cart.dart';

class MedicineList extends StatelessWidget {
  final MedicineController _medicineController = Get.put(MedicineController());
  final List<ProductModel>? _productList =[
    ProductModel(
        id:1,
        imageUrl: "assets/Medicines/11.png",
        title: "Salosphir 100mg Tablet",
        price: "200",
        prescriptionRequired: true
    ),
    ProductModel(
      id:2,
        imageUrl: "assets/Medicines/22.png",
        title: "Gabapin NT Tablet",
        price: "450",
        prescriptionRequired: false
    ),
    ProductModel(
      id:3,
        imageUrl: "assets/Medicines/33.png",
        title: "Flexon MR Tablet",
        price: "150",
        prescriptionRequired: false
    ),
    ProductModel(
      id:4,
        imageUrl: "assets/Medicines/44.png",
        title: "Ciplox 500 Tablet 100mg Tablet",
        price: "45.36",
        prescriptionRequired: false
    ),
    ProductModel(
      id:5,
        imageUrl: "assets/Medicines/55.png",
        title: "Dacalin C 300mg Capsule",
        price: "242.64",
        prescriptionRequired: true
    ),
    ProductModel(
      id:6,
        imageUrl: "assets/Medicines/66.png",
        title: "Ecospirin 75 Tablet",
        price: "5.33",
        prescriptionRequired: true
    ),
  ];
  MedicineList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios,color: AppColors.secondaryColor,)),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Health Care",style: CustomTextStyle.appBarTextStyle(color: AppColors.secondaryColor),),
        actions: [
          InkWell(
            onTap: (){
              Get.to(CartPage());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
              child: Stack(
                children:  [
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
                        child:
                        Obx(() => Text(_medicineController.cartList.length.toString(),style: CustomTextStyle.ultraSmallTextStyle(color: Colors.white),),
                        )
                      )
                  )
                ],
              ),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding, vertical: 8),
        child: GridView.builder(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
              crossAxisCount: 2,
            ),
            itemCount: _productList!.length,
            itemBuilder: (context, index) {
              return ProductWidget(
                productModel: _productList![index],
              );
            }),
      ),
    );
  }
}
