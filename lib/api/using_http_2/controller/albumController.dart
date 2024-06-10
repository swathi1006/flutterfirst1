import 'package:flutterfirst/api/using_http_2/service/httpService.dart';
import 'package:get/get.dart';

class AlbumController extends GetxController{
  var isLoading = true.obs;
  var albumList = [].obs;

  @override
  void onInit() {
    readAlbums();
    super.onInit();
  }


  void readAlbums() async{
    try{
      isLoading(true);
      var albums = await HttpService2.getAlbums();
      if (albums != null){
        albumList.value = albums;
      }
    }catch(e){
      print(e);
    }finally{
      isLoading(false);
    }
  }
}