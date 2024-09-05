import 'dart:convert';
import 'package:http/http.dart' as http;

import '../config/config.dart';
import '../model/hoax.dart';
import '../model/hospital.dart';
import '../model/news.dart';

class ApiService {
  final String baseUrl = 'https://dekontaminasi.com/api/id/covid19/';

  Future<List<Hospital>?> getHospital() async{
    var url = Uri.parse('${baseURL}hospitals');
    print('url');

    var response = await http.get(url);
    print(response.body);

    if(response.statusCode == 200){
      List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((hospital) => Hospital.fromJson(hospital)).toList();
    } else {
      print('Request gagal dengan status: ${response.statusCode}.');
      return null;
    }
  }

  Future<List<News>?> getNews() async{
    var url = Uri.parse('${baseURL}news');
    print('url');

    var response = await http.get(url);
    print(response.body);

    if(response.statusCode == 200){
      List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((news) => News.fromJson(news)).toList();
    } else {
      print('Request gagal dengan status: ${response.statusCode}.');
      return null;
    }
  }

  Future<List<Hoax>?> getHoax() async{
    var url = Uri.parse('${baseUrl}hoaxes');
    print('url');

    var response = await http.get(url);
    print(response.body);

    if(response.statusCode == 200){
      List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((hoax) => Hoax.fromJson(hoax)).toList();
    } else {
      print('Request gagal dengan status: ${response.statusCode}.');
      return null;
    }
  }
}
