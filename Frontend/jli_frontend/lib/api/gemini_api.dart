import 'dart:convert';

import 'package:http/http.dart' as http;

class GeminiApi {

  static Future<Map<String, String>> getHeader() async {
    return {
      'Content-type': 'application/json',
    };
  }

  static Future<String> getGeminiData(message) async {
    try {
      final header = await getHeader();

      final Map<String, dynamic> requestBody = {
        'contents': [
          {
            'parts': [
              {
                'text': 'user message request here $message'
              }
            ]
          }
        ],
        'generationConfig':{
          'temperature': 0.8,
          'maxOutputTokens':1000
        }
      };

      String url = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.0-pro:generateContent?key=AIzaSyD10e0ugtcacDhznMNp7QcU2KdoAaT-aHo';
      //

      var response = await http.post(
        Uri.parse(url),
        headers: header,
        body: jsonEncode(requestBody),
      );

      print(response.body);

      if(response.statusCode==200){
        var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
        return jsonResponse['candidates'][0]['content']['parts'][0]['text'];
      } else {
        return '';
      }

    } catch (err) {
      print("Error : $err");
      return '';
    }
  }


}