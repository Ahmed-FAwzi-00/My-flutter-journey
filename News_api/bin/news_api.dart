import 'package:dio/dio.dart';
//https://chatgpt.com/s/t_6a234eaf55408191a6c70080fea3a3ad
Dio dio = Dio();
void main() async{
 getWeather();
 getNews();
 getHeadLines();
}
void getWeather() async{
   try{
     var result = await dio.get(
         'https://api.openweathermap.org/data/2.5/weather',
         queryParameters: {
           'lat': '40.371663',
           'lon': '-98.321266',
           'appid': '39ef56aa87e0f9d833e66cd9111de959'
         });
     print(result.data.toString());
   }
 catch(e){
   handleDioException(e);
}
}
void getNews() async{
  try {
    var result = await dio.get('https://newsapi.org/v2/everything',
        queryParameters: {
          'apiKey': '836086f05b344448a16dd41ee51c6320',
          'q': 'Egypt'
        }
    );

    print(result.data.toString());
  }catch(e){
    handleDioException(e);
  }
}
void getHeadLines() async{
  try {
    var result = await dio.get('https://newsapi.org/v2/top-headlines',
        queryParameters: <String, dynamic>{
          'apiKey': '836086f05b344448a16dd41ee51c6320',
          'q': 'we',
          'category': 'science',
          'page' : "1",
          'country' : 'us'
        }
    );

    print(result.data.toString());
  }catch(e){
    handleDioException(e);
  }
}

void handleDioException(Object e) {
  if (e is DioException) {
    var errorResponse = e.response?.data as Map<String, dynamic>;
    var errorMsg = errorResponse['message'];
    print(errorResponse.toString());
    print(errorMsg);
  } else {
    print(e.toString());
  }
}

