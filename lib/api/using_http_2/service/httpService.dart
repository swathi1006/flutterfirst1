import 'package:flutterfirst/api/using_http_2/model/albumModel.dart';
import 'package:http/http.dart' as http;

class HttpService2{
   static Future<List<Albums>>getAlbums() async {
     
     http.Response response2 = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
     if (response2.statusCode == 200){
       var data2 = response2.body;
       return albumsFromJson(data2);
     }else{
       throw Exception();
     }
   }
}