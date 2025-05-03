import 'package:get/get.dart';
import 'package:payment_app/component/service/data_service.dart';

class DataController extends GetxController{




  var list=[].obs;
  final service= DataServices();
  var loading=false.obs;
  @override
  void onInit(){
    _loadDate();
    super.onInit();
  }
  _loadDate()async{
    loading.value=false;
    try{
      var info=service.getUsers();
      list.addAll(await info);
    }catch(e){
      print("Encountered error !");
    }finally{
      loading.value=true;
    }

  }
}