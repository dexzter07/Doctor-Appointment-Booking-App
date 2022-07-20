import 'package:doctor_zone_user/controller/medicine/medicine_controller.dart';
import 'package:doctor_zone_user/models/product_model.dart';
import 'package:doctor_zone_user/views/pages/medicines/medicine_detail.dart';
import 'package:doctor_zone_user/views/styles/app_colors.dart';
import 'package:doctor_zone_user/views/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductWidget extends StatelessWidget {
  final MedicineController _medicineController = Get.put(MedicineController());
  final ProductModel? productModel;
  ProductWidget({Key? key, this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    _medicineController.id.value = productModel!.id.toString();
                    _medicineController.imageUrl.value = productModel!.imageUrl.toString();
                    _medicineController.title.value = productModel!.title.toString();
                    _medicineController.price.value = productModel!.price.toString();
                    _medicineController.prescriptionRequired.value = productModel!.prescriptionRequired!;
                    Get.to(MedicineDetailPage());
                  },
                  child: Image.asset(productModel!.imageUrl.toString())),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Wrap(
                  children: [
                    Text(
                      productModel!.title.toString(),
                      style: CustomTextStyle.mediumTextStyle(
                          color: AppColors.secondaryColor),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "₹ ${productModel!.price}",
                      style: CustomTextStyle.boldMediumTextStyle(
                          color: AppColors.secondaryColor),
                    ),
                  ),
                  Obx(() => Align(
                      alignment: Alignment.bottomRight,
                      child: _medicineController.cartList
                              .contains(productModel!.id)
                          ? Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    _medicineController.cartList
                                        .remove(productModel!.id);
                                  },
                                  child: Container(
                                      decoration: const BoxDecoration(
                                          color: AppColors.primaryColor,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                      padding: const EdgeInsets.all(6),
                                      child: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 18,
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  _medicineController.cartList.length.toString(),
                                  style: CustomTextStyle.boldMediumTextStyle(
                                      color: AppColors.secondaryColor),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    _medicineController.cartList
                                        .add(productModel!.id);
                                  },
                                  child: Container(
                                      decoration: const BoxDecoration(
                                          color: AppColors.primaryColor,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                      padding: const EdgeInsets.all(6),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 18,
                                      )),
                                ),
                              ],
                            )
                          : InkWell(
                              onTap: () {
                                _medicineController.cartList
                                    .add(productModel!.id);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ))),
                ],
              )
            ],
          ),
        ),
        productModel!.prescriptionRequired == false
            ? Container()
            : Positioned(
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    "assets/ic_prescription.png",
                    width: 25,
                  ),
                ),
              ),
      ],
    );
  }
}
