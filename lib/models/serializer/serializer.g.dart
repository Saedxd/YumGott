// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AppetizerModel.serializer)
      ..add(CategoryListModel.serializer)
      ..add(CategoryModel.serializer)
      ..add(DataModel.serializer)
      ..add(GetAllProductsModel.serializer)
      ..add(GetOneProductModel.serializer)
      ..add(ProductModel.serializer)
      ..add(UserDataModel.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CategoryListModel)]),
          () => new ListBuilder<CategoryListModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CategoryListModel)]),
          () => new ListBuilder<CategoryListModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ProductModel)]),
          () => new ListBuilder<ProductModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ProductModel)]),
          () => new ListBuilder<ProductModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AppetizerModel)]),
          () => new ListBuilder<AppetizerModel>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
