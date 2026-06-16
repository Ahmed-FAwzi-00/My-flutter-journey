import 'package:dio/dio.dart';

  Dio dio = Dio(BaseOptions(
      baseUrl: 'https://ntitodo-production-3c33.up.railway.app/api/')

  );
  var accessToken = '';
  var refreshToken = '';
Future main() async {
  await getLogIn();
 // await getRegister();
 //  print(accessToken);
 //  await changePassword();
  await getRefreshToken();
  // await updateUserData();
  await getUserData ();
  // await deleteUser ();
   newTask();
  await updateTask();
  await getTaskData();
  await deleteTask();


}
  Future getLogIn() async{
  try {
    var response = await dio.post('login',
        data: FormData.fromMap({'username': 'Ahmed Fawzi', 'password': '1234567'}));
      //كيفية اخذ Access Token And Refresh Token
         var mapResponse = response.data as Map<String, dynamic>;
         refreshToken = mapResponse['refresh_token'];
         accessToken = mapResponse['access_token'];

        print(response.toString());
  } catch (e) {
    if(e is DioException){
      var errorResponse = e.response?.data as Map<String, dynamic>;
      var errorMsg = errorResponse['message'];
      print(errorResponse.toString());
      print(errorMsg);
    }
    else{
      print(e.toString());
    }
}

  }
  Future getRegister () async {

    try {
      var response = await dio.post(
          'register',
          data: FormData.fromMap({'username': 'weed', 'password': '123456'}));
      print(response.toString());
    } catch (e){
      handleDioException(e);
    }
} //need to change userName
  Future changePassword() async{
  try{
    var response = await dio.post('change_password',
        data : FormData.fromMap({
          'current_password':'123456',
          'new_password':'1234567',
          'new_password_confirm':'1234567'
         }), options: Options(
            headers: {
              'Authorization': 'Bearer $accessToken'
            }));
    print(response.data.toString());
  }catch(e){
      handleDioException(e);
    }
  }//need to use other password
  Future getRefreshToken () async {
    try{
      var response = await dio.post('refresh_token',
          options: Options(
              headers: {
                'Authorization': 'Bearer $refreshToken'
              }));
              print(response.data.toString());
  }catch(e){
      handleDioException(e);
    }
  }//we use refresh token
  Future updateUserData () async {
    try{
      var response = await dio.put('update_profile',
          data: FormData.fromMap({'username': 'Ahmed Fawzi'}),
          options: Options(
              headers: {
                'Authorization': 'Bearer $accessToken'
              }

          ));
      print(response.data.toString());
    }catch(e){
      handleDioException(e);
    }
  } //if you update Name change it in log in
  Future getUserData () async {
    try{
      var response = await dio.get('get_user_data',
          options: Options(
              headers: {
                'Authorization': 'Bearer $accessToken'
              }
          ));
      print(response.data.toString());
    }catch(e){
      handleDioException(e);
    }
  }
  Future deleteUser () async {
    try{
      var response = await dio.delete('delete_user',
          options: Options(
              headers: {
                'Authorization': 'Bearer $accessToken'
              }
          ));
      print(response.data.toString());
    }catch(e){
      handleDioException(e);
    }
  }

  Future newTask () async{
  try{
    var response = await dio.post('new_task',
      data: FormData.fromMap({
        'title' : 'task',
        'description' :'task num 1'})
        ,options:Options(
        headers: {
          'Authorization': 'Bearer $accessToken'
        })
    );
    print(response.data.toString());
  }catch(e){
    handleDioException(e);
  }

  }
  Future updateTask () async{
    try{
      var response = await dio.put('tasks/1',
          data: FormData.fromMap({
            'title' : 'tas',
            'description' :'num'})
          ,options:Options(
              headers: {
                'Authorization': 'Bearer $accessToken'
              } )
      );
      print(response.data.toString());
    }catch(e){
      handleDioException(e);
    }
  }
  Future getTaskData () async {
    try{
      var response = await dio.get('my_tasks',
          options:Options(
              headers:{
          'Authorization': 'Bearer $accessToken'
          })
      );
      print(response.data.toString());
    }catch(e){
      handleDioException(e);
    }
  }
  Future deleteTask () async {
  try{
    var response = await dio.delete('tasks/1',
        options:Options(
            headers:{
              'Authorization': 'Bearer $accessToken'
            })
    );
    print(response.data.toString());
  }catch(e){
    handleDioException(e);
  }
}

  handleDioException(Object e) {
    if (e is DioException) {
      var errorResponse = e.response?.data as Map<String, dynamic>;
      var errorMsg = errorResponse['message'];
      print(errorResponse.toString());
      print(errorMsg);
    } else {
      print(e.toString());
    }
  }

