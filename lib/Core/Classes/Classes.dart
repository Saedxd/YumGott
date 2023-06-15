
// ignore_for_file: non_constant_identifier_names

import 'package:Yumgott/models/UserDataModel/UserModel.dart';
import 'package:flutter/material.dart';
//
// class Skills{
//   String Skill_Type="";
//   String Skill_Image="";
//   String Screen_Info="";
//   String Screen_type="";
//   Skills(this.Screen_Info,this.Screen_type,this.Skill_Type,  this.Skill_Image);
// }
//
// class user {
//   String f_name="";
//   String l_name="";
//   String email="";
//   String pass ="";
//   String Role ="";
//   String AreaOF_Interest="";
//   List<String> Interests= [];
//   String Mentee_Goal = "";
//   String Goal_Desc ="";
// }
//
// class PortfolioForm{
//   final TextEditingController ProjectNameController = TextEditingController();
//   final TextEditingController ProjectDescController = TextEditingController();
//   final TextEditingController ProjectLinkController = TextEditingController();
// }
//
// class WorkExperienceForm{
//   final TextEditingController WorkPlaceNameController = TextEditingController();
//   final TextEditingController PositionHeldController = TextEditingController();
//   final TextEditingController StartDateController = TextEditingController();
//   final TextEditingController EndDateController = TextEditingController();
// }
//
// class EducationBackGroundForm{
//   final TextEditingController InstitutionNameController = TextEditingController();
//   final TextEditingController EducationLevelController = TextEditingController();
//   final TextEditingController COStudyController = TextEditingController();
//   final TextEditingController YOeducationController = TextEditingController();
// }
import 'package:built_collection/built_collection.dart';
import 'package:url_launcher/url_launcher.dart';

class MapUtils {

  MapUtils._();

  static Future<void> openMapToLocation(double latitude, double longitude) async {
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }

  static Future<void> openMapToDirection(double latitude, double longitude) async {
    String googleUrl =
        'https://www.google.com/maps/dir/?api=1&destination=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }

}




class User {
  String name="";
  int ID=0;
  String? lat="";
  String? lng="";
  String Email="";
  String Image="";
  String Bio="";
  // BuiltList<UserModel>?  Followers;
  // BuiltList<UserModel>?  Following;
}

class Order{

}

class notification{
  String? title;
  String? Body;
  String? user;
  String? Type;
  String? Requesteduser_Image;
  String? Time;
}

class Comment{
  String? comment;
  String? ProfileImage;
  String? UserName;
  String? time;
}

class Video{
  String? VideoUrl;
  String? id;
  String? CreatedAt;
  String? City;
  int? LikesCount;
  bool? LikeStatus;
  bool? SaveStatus;
  bool? Is_UserProfileFollowed;
  int? CommentsCount;

  Product? product;
  User? Restaurant;
  User? Publisher;
  List<Comment>? comments;
}

class settings{
  String? name;
  String? Image;
  VoidCallback? Ontap;
  settings(this.name,this.Image,this.Ontap);
}

class RestaurantMenuTile{
  String? name;
  int? ID;
  String? Type;
  int? Length=0;
  List<Product>? Products=[];
  List<Appetizer>? Appetizers=[];

}
class Product {
  String Name="";
  String price="";
  String discount="";
  int ID=0;
  bool is_Active=true;
  double Ratting=0;
  String Image="";
  String Description ="";
}


class Appetizer{
  int ID=0;
  String appetizer_id ="";
  String name="";
  String info ="";
  String price ="";
}