import 'package:get/get.dart';

class MedicineController extends GetxController{
  var id = ''.obs;
  var imageUrl = ''.obs;
  var title = ''.obs;
  var price = ''.obs;
  var prescriptionRequired = false.obs;
  var cartList = [].obs;
  var isLoading = false.obs;

}