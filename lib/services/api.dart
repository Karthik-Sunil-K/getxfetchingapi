
import 'package:getwithoutapi/model/items.dart';
import 'package:http/http.dart' as http;


class ApiServices {


  static var client = http.Client();
  static Future<List<Items>> FetchData()async{
    var response=await client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var jsonString = response.body;
    return itemsFromJson(jsonString);
   
  }
}