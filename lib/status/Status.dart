import 'package:get/get.dart';

enum Status {Loading , Complate, Error}

class Status_condition extends GetxController
{
    final RxRequestStatus = Status.Loading.obs;

    void setRequestStatus(Status val) => RxRequestStatus.value = val;
}