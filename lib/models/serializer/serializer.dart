library serializer;

import 'package:Yumgott/models/GetAllProductsModel/GetAllProductsModel.dart';
import 'package:Yumgott/models/GetOneProductModel/GetOneProductModel.dart';
import 'package:Yumgott/models/RestaurantCategoryModel/AppetizerModel.dart';
import 'package:Yumgott/models/RestaurantCategoryModel/CategoryListModel.dart';
import 'package:Yumgott/models/RestaurantCategoryModel/CategoryModel.dart';
import 'package:Yumgott/models/RestaurantCategoryModel/ProductModel.dart';
import 'package:Yumgott/models/UserDataModel/DataModel.dart';
import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';



part 'serializer.g.dart';

@SerializersFor([


  DataModel,
  CategoryModel,
  CategoryListModel,
  UserDataModel,
  GetAllProductsModel,
  ProductModel,
  // SendCodeModel,
  // GetNotificationsModel,
  // NotificationsListModel,
  // GetoneVideoModel,
  // GetAllRestaurantModel,
  // CateogoryDataModel,
  // GetCategoryRestaurantsModel,
  // GetAllProductsModel,
  // GetOneProductModel,
  // ProductModel,
  // GetAllUsersModel,
  // GetCategoriesModel,
  // CategoryProductsDataModel,
  // GetCategoryProductsModel,
  // GetRestaurantMenuModel,
  // AllVidoesListModel,
  // GetAllVidoesModel,
  // GetMenuModel,
  // MenuCategoryListModel,
  // TransactionsListModel,
  // GetallTranscationsModel,
  // ListOfCommentsModel,
  // GetVideoCommentsModel,
  // SendCommentModel,
  GetOneProductModel,
])

final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(DataModel),
        ],
      )),
          () => ListBuilder<DataModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(GetOneProductModel),
        ],
      )),
          () => ListBuilder<GetOneProductModel>())
  //GetOneProductModel
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(ProductModel),
        ],
      )),
          () => ListBuilder<ProductModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(GetAllProductsModel),
        ],
      )),
          () => ListBuilder<GetAllProductsModel>())
  //  ,
//   ,
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(UserDataModel),
        ],
      )),
          () => ListBuilder<UserDataModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(CategoryListModel),
        ],
      )),
          () => ListBuilder<CategoryListModel>())

  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(CategoryModel),
        ],
      )),
          () => ListBuilder<CategoryModel>())

    //,
    //   ,
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(SendCommentModel),
  //       ],
  //     )),
  //         () => ListBuilder<SendCommentModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(GetVideoCommentsModel),
  //       ],
  //     )),
  //         () => ListBuilder<GetVideoCommentsModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(ListOfCommentsModel),
  //       ],
  //     )),
  //         () => ListBuilder<ListOfCommentsModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(GetallTranscationsModel),
  //       ],
  //     )),
  //         () => ListBuilder<GetallTranscationsModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(TransactionsListModel),
  //       ],
  //     )),
  //         () => ListBuilder<TransactionsListModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(NotificationsListModel),
  //       ],
  //     )),
  //         () => ListBuilder<NotificationsListModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(GetNotificationsModel),
  //       ],
  //     )),
  //         () => ListBuilder<GetNotificationsModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(GetoneVideoModel),
  //       ],
  //     )),
  //         () => ListBuilder<GetoneVideoModel>())
  //
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(MenuCategoryListModel),
  //       ],
  //     )),
  //         () => ListBuilder<MenuCategoryListModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(GetMenuModel),
  //       ],
  //     )),
  //         () => ListBuilder<GetMenuModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(GetAllVidoesModel),
  //       ],
  //     )),
  //         () => ListBuilder<GetAllVidoesModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(AllVidoesListModel),
  //       ],
  //     )),
  //         () => ListBuilder<AllVidoesListModel>())
  //
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(CategoryProductsDataModel),
  //       ],
  //     )),
  //         () => ListBuilder<CategoryProductsDataModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(GetCategoryProductsModel),
  //       ],
  //     )),
  //         () => ListBuilder<GetCategoryProductsModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(GetCategoriesModel),
  //       ],
  //     )),
  //         () => ListBuilder<GetCategoriesModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(GetAllRestaurantModel),
  //       ],
  //     )),
  //         () => ListBuilder<GetAllRestaurantModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(SendCodeModel),
  //       ],
  //     )),
  //         () => ListBuilder<SendCodeModel>())
  //
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(UserDataModel),
  //       ],
  //     )),
  //         () => ListBuilder<UserDataModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(CateogoryDataModel),
  //       ],
  //     )),
  //         () => ListBuilder<CateogoryDataModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(GetCategoryRestaurantsModel),
  //       ],
  //     )),
  //         () => ListBuilder<GetCategoryRestaurantsModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(GetOneProductModel),
  //       ],
  //     )),
  //         () => ListBuilder<GetOneProductModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(ProductModel),
  //       ],
  //     )),
  //         () => ListBuilder<ProductModel>())
  // ..addBuilderFactory(
  //     (const FullType(
  //       BuiltList,
  //       [
  //         FullType(GetAllUsersModel),
  //       ],
  //     )),
  //         () => ListBuilder<GetAllUsersModel>())


    //   ,
    //   ,
    //   ,
    //   ,
    //   ,
  )
    .build();
