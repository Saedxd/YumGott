


import 'dart:io';



import 'package:Yumgott/models/UserDataModel/DataModel.dart';
import 'package:Yumgott/models/UserDataModel/UserModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'iprefs_helper.dart';

const  ID = "ID";
const  Username = "Username";
const  MOBILE = "MOBILE";
const  Boi = "Boi";
const  EMAIL = "EMAIL";
const  IMAGE = "IMAGE";
const  TOKEN = "TOKEN";
const  lng = "lng";
const  lat = "lat";
const  access_token = "access_token";
const  is_restaurant = "is_restaurant";



// const  Location = "Location";
// const  wallet = "wallet";
// const  Role = "Role";


class PrefsHelper implements IPrefsHelper {

  @override
  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
    // we cant
  }


  @override
  Future<void> saveUser(DataModel user, String token) async {

      (await getPrefs()).setInt(ID, user.id??0);
      //(await getPrefs()).setString(Boi, user.??"");
    //  (await getPrefs()).setDouble(wallet, user.wallet??0.0);
   //   (await getPrefs()).setString(Location, user.location??"");
      (await getPrefs()).setString(access_token, token);
      (await getPrefs()).setString(MOBILE, user.mobile_number??"");
      (await getPrefs()).setString(is_restaurant, user.is_restaurant??"");
      (await getPrefs()).setString(IMAGE, user.photo??"");
      (await getPrefs()).setString(Username, user.name??"");
      (await getPrefs()).setString(EMAIL, user.email?? "");
      (await getPrefs()).setString(lat, user.latitude?? "");
      (await getPrefs()).setString(lng, user.longitude?? "");
      (await getPrefs()).setString(TOKEN, "Bearer ${token}");

  }


  @override
  Future<DataModel> getUser() async{
  int id =  (await getPrefs()).getInt(ID)??0;
  String Image = (await getPrefs()).getString(IMAGE)??"";
  String email = (await getPrefs()).getString(EMAIL)??"";
  String Token = (await getPrefs()).getString(TOKEN)??"";
  String NUMBER = (await getPrefs()).getString(MOBILE)??"";
  String name = (await getPrefs()).getString(Username)??"";
 // String Bio = (await getPrefs()).getString(Boi)??"";
  String latt =  (await getPrefs()).getString(lat)??"";
  String lngg =  (await getPrefs()).getString(lng)??"";
  String Is_restaurant =  (await getPrefs()).getString(is_restaurant)??"";


  DataModel user = DataModel((b) => b
      ..email = email
      ..name = name
      ..photo = Image
      ..is_restaurant = Is_restaurant
      ..id = id
      ..mobile_number = NUMBER
   //   ..bio = Bio
      ..longitude = lngg
      ..latitude  = latt
      ..Token  = Token
  );

  return user;
  }


  //
//   // @override
//   // Future<int?> getAppLanguage() async {
//   //   return (await getPrefs()).getInt(APP_LANGUAGE)
//   //       ?? AppLanguageKeys.EN
//   //   ;
//   // }
//   //
//   // @override
//   // Future<void> setAppLanguage(int value) async {
//   //   (await getPrefs()).setInt(APP_LANGUAGE, value);
//   // }
//   // @override
//   // Future<void> SetEmail(String Email) async {
//   //   (await getPrefs()).setString(EMAIL, Email);
//   // }
//   // @override
//   // Future<void> Setpass(String pass) async {
//   //   (await getPrefs()).setString(Pass, pass);
//   // }
//   // @override
//   // Future<String> Getpass() async {
//   //   return ((await getPrefs()).getString(Pass))!;
//   // }
//   // @override
//   // Future<String> GetEmail() async {
//   //   return ((await getPrefs()).getString(EMAIL))!;
//   // }
//
//
//   @override
//   Future<double> Getlat() async {
//     return ((await getPrefs()).getDouble(lat)??0);
//   }
//   @override
//   Future<double> GetLng() async {
//     return ((await getPrefs()).getDouble(lng)??0);
//   }
//
//
// // void deleteeverything(){
// //   SharedPreferences.remove();
// //   return;
// //
// // }
//   @override
//   Future<bool> getIsLogin() async {
//     print("IN Getislogin Fucntion :");
// print((await getPrefs()).getBool(IS_LOGIN));
//     print("Dot");
//     return (((await getPrefs()).getBool(IS_LOGIN)) ?? false);
//   }
//
//   @override
//   Future<String> getimage() async {
//     return (await getPrefs()).getString(IMAGE) ?? "";
//   }
//
//   @override
//   Future<void> setIMage(String Image) async{
//     (await getPrefs()).setString(IMAGE, Image);
//   }
//
//
//   //
//   // Future<String> getMobileNumber() async {
//   //   return ((await getPrefs()).getString(MOBILE))!;
//   // }
//   @override
//   Future<void> SetThemeON()async{
//     (await getPrefs()).setBool(SetThemeON1, !( ((await getPrefs()).getBool(SetThemeON1))??false));
//   }
//
//   Future<bool> GetThemeON() async{
//     return ((await getPrefs()).getBool(SetThemeON1)??true);
//   }
//
//   @override
//   Future<void> SetIsCreator(int Creatorr)async{
//     (await getPrefs()).setInt(is_Creator,Creatorr);
//   }
//
//   Future<int> GetIsCreator() async{
//     return ((await getPrefs()).getInt(is_Creator))??0;
//   }
//
//
//
//   @override
//   Future<void> SETISsoical() async{
//     (await getPrefs()).setBool(IS_soical, !( ((await getPrefs()).getBool(IS_soical)??false)));
//   }
//   @override
//   Future<bool> GETISsoical() async{
//     return ((await getPrefs()).getBool(IS_soical)??false);
//   }
// //IS_soical
//
//
//
//   @override
//   Future<void> setIsLogin() async{
//     (await getPrefs()).setBool(IS_LOGIN, true);
//   }//
//   @override
//   Future<void> Yumgottut() async{
//     (await getPrefs()).setBool(IS_LOGIN, false);
//     (await getPrefs()).setString(access_token,"");
//     (await getPrefs()).setString(TOKEN,"");
//   }
//
//   @override
//   Future<void> SetisFirstTimeLogin() async{
//     (await getPrefs()).setBool(isFirstTimeLogin, false);
//   }
//
//   @override
//   Future<bool> GetisFirstTimeLogin() async{
//     return ((await getPrefs()).getBool(isFirstTimeLogin)??true);
//   }
//
//
//
//   // @override
//   // Future<String> getCurrency() async{
//   //
//   //   return (await getPrefs()).getString(APP_Currency) ?? 'USD';
//   // }
//   //
//   // @override
//   // Future<void> setCurrency(String value)async {
//   //
//   //   (await getPrefs()).setString(APP_Currency, value);
//   // }
//   //
//   // @override
//   // Future<bool> getNotification() async{
//   //
//   //   return (await getPrefs()).getBool(NOTIFI) ?? false;
//   // }
//   //
//   // @override
//   // Future<void> setNotification(bool value)async {
//   //
//   //   (await getPrefs()).setBool(NOTIFI, value);
//   // }
//
//
// @override
// Future<void> SetLatLng(double Lat,double Lng)async {
//   (await getPrefs()).setDouble(lat, Lat);
//   (await getPrefs()).setDouble(lng, Lng);
// }
//
@override
Future<String> getToken() async {
  return ((await getPrefs()).getString(access_token)??"");
}
  @override
  Future<void> SetToken(String token) async{
    (await getPrefs()).setString(access_token,token);
  }//

//
//   @override
// Future<int> getUserId() async {
//   return ((await getPrefs()).getInt(ID)??0);
// }
//
//
//   Future<String> GetTimeZone() async {
//     return ((await getPrefs()).getString(Time_Zone)??"");
//   }
//
//   Future<void> SetTimeZone(String TimeZone)async{
//     (await getPrefs()).setString(Time_Zone,TimeZone);
//   }
// //  Future<String> GetIsNewUser();
//   Future<void> SetNOTnewUser();
//   @override
//   Future<bool> GetIsNewUser()async {
//     return ((await getPrefs()).getBool(is_new_user)??true);
//   }
//
//   @override
//   Future<void> SetNOTnewUser() async{
//     (await getPrefs()).setBool(is_new_user,false);
//   }

}


