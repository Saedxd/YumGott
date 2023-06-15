import 'package:Yumgott/App/app.dart';
import 'package:Yumgott/Core/Classes/Common_Import/Common_Import.dart';
import 'package:Yumgott/Core/Functions/Widgets.dart';
import 'package:Yumgott/Core/theme/theme_constants.dart';
import 'package:Yumgott/Core/widgets/CustomButton.dart';
import 'package:Yumgott/Core/widgets/CustomButton2.dart';
import 'package:Yumgott/Core/widgets/Custom_Textfield.dart';
import 'package:Yumgott/UI/RestaurantHome/AddProductScreen/bloc/AddProductScreen_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/AddProductScreen/bloc/AddProductScreen_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/AddProductScreen/bloc/AddProductScreen_State.dart';
import 'package:Yumgott/UI/RestaurantHome/MenuScreen/bloc/RestaurantMenu_Bloc.dart';
import 'package:Yumgott/UI/RestaurantHome/MenuScreen/bloc/RestaurantMenu_State.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/Core/Functions/Fucntions.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multiselect/multiselect.dart';

class AddProductScreen extends StatefulWidget {
   AddProductScreen({Key? key,this.is_Edit}) : super(key: key);
bool? is_Edit;
  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final pref = sl<IPrefsHelper>();
  final _AddProductScreenBloc = sl<AddProductScreenBloc>();

  final TextEditingController _NameController = TextEditingController();
  final TextEditingController _DescriptionController = TextEditingController();
  final TextEditingController _PriceController = TextEditingController();
  final TextEditingController _DiscountController = TextEditingController();
  ScrollController Controlerr = ScrollController();
  var _formkey1 = GlobalKey<FormState>();
  int Category_id= 0;
  File? image;

  @override
  void initState() {
    super.initState();
    _AddProductScreenBloc.add(GetAppetizers());
    _AddProductScreenBloc.add(GetProductCateogry());
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _AddProductScreenBloc,
        builder: (BuildContext context, AddProductScreenState state) {
          return Scaffold(
            backgroundColor: Color(0xffF5F5F5),
            body: SafeArea(
              child: Stack(
                children: [
                  Container(
                      width: w,
                      height: h,
                      color: Color(0xffF5F5F5),
                      margin: EdgeInsets.only(top: 90.h),
                      child: ScrollConfiguration(
                        behavior: MyBehavior(),
                        child: SingleChildScrollView(
                          controller: Controlerr,
                          physics: AlwaysScrollableScrollPhysics(),
                          child: Form(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            key: _formkey1,
                            child: Column(
                              children: [
                                Container(
                                  //color: Colors.red,
                                  width: 292.08.w,
                                  height: 75.h,
                                  child: TextFormField(
                                    textAlignVertical: TextAlignVertical.center,
                                    // Align vertically
                                    textAlign: TextAlign.left,
                                    maxLines: 1,
                                    keyboardAppearance: Brightness.dark,
                                    textInputAction: TextInputAction.next,
                                    controller: _NameController,
                                    cursorHeight: 15.h,
                                    onChanged: (value) {},
                                    onFieldSubmitted: (value) {},
                                    validator: MultiValidator([
                                      RequiredValidator(errorText: "Required"),
                                    ]),
                                    cursorColor: Colors.grey,
                                    inputFormatters: [],
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    style: Montserrat.copyWith(
                                      fontSize: 15.sp,
                                      color: const Color(0xff3b2d2f),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                        // helperText: "",
                                        // counterText:  "",
                                        label: Text("Name",
                                            style: Montserrat.copyWith(
                                              fontSize: 18.sp,
                                              color: const Color(0xff766769),
                                              fontWeight: FontWeight.w500,
                                            )),
                                        labelStyle: SegouUI.copyWith(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                        ),
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10.w, vertical: 10.h)),
                                    keyboardType: TextInputType.text,
                                    obscureText: false,
                                  ),
                                ),
                                Container(
                                  //color: Colors.red,
                                  width: 292.08.w,
                                  height: 75.h,
                                  child: TextFormField(
                                    textAlignVertical: TextAlignVertical.center,
                                    // Align vertically
                                    textAlign: TextAlign.left,
                                    maxLines: 1,
                                    keyboardAppearance: Brightness.dark,
                                    textInputAction: TextInputAction.next,
                                    controller: _DescriptionController,
                                    cursorHeight: 15.h,
                                    onChanged: (value) {},
                                    onFieldSubmitted: (value) {},
                                    validator: MultiValidator([
                                      RequiredValidator(errorText: "Required"),
                                    ]),
                                    cursorColor: Colors.grey,
                                    inputFormatters: [],
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    style: Montserrat.copyWith(
                                      fontSize: 15.sp,
                                      color: const Color(0xff3b2d2f),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                        // helperText: "",
                                        // counterText:  "",
                                        label: Text("Description",
                                            style: Montserrat.copyWith(
                                              fontSize: 18.sp,
                                              color: const Color(0xff766769),
                                              fontWeight: FontWeight.w500,
                                            )),
                                        labelStyle: SegouUI.copyWith(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                        ),
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10.w, vertical: 10.h)),
                                    keyboardType: TextInputType.text,
                                    obscureText: false,
                                  ),
                                ),
                                Container(
                                  //color: Colors.red,
                                  width: 292.08.w,
                                  height: 75.h,
                                  child: TextFormField(
                                    textAlignVertical: TextAlignVertical.center,
                                    // Align vertically
                                    textAlign: TextAlign.left,
                                    maxLines: 1,
                                    keyboardAppearance: Brightness.dark,
                                    textInputAction: TextInputAction.next,
                                    controller: _PriceController,
                                    cursorHeight: 15.h,
                                    onChanged: (value) {},
                                    onFieldSubmitted: (value) {},
                                    validator: MultiValidator([
                                      RequiredValidator(errorText: "Required"),
                                    ]),
                                    cursorColor: Colors.grey,
                                    inputFormatters: [],
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    style: Montserrat.copyWith(
                                      fontSize: 15.sp,
                                      color: const Color(0xff3b2d2f),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                        // helperText: "",
                                        // counterText:  "",
                                        suffixIcon: Container(
                                            margin: EdgeInsets.only(
                                                top: 30.h, left: 38.w),
                                            child: Text(
                                              '\$',
                                              style: Montserrat.copyWith(
                                                fontSize: 15.sp,
                                                color: const Color(0xff3b2d2f),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              softWrap: false,
                                            )),
                                        label: Text("Price",
                                            style: Montserrat.copyWith(
                                              fontSize: 18.sp,
                                              color: const Color(0xff766769),
                                              fontWeight: FontWeight.w500,
                                            )),
                                        labelStyle: SegouUI.copyWith(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                        ),
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10.w, vertical: 10.h)),
                                    keyboardType: TextInputType.text,
                                    obscureText: false,
                                  ),
                                ),
                                Container(
                                  width: 292.08.w,
                                  height: 75.h,
                                  child: TextFormField(
                                    textAlignVertical: TextAlignVertical.center,
                                    // Align vertically
                                    textAlign: TextAlign.left,
                                    maxLines: 1,
                                    keyboardAppearance: Brightness.dark,
                                    textInputAction: TextInputAction.next,
                                    controller: _DiscountController,
                                    cursorHeight: 15.h,
                                    onChanged: (value) {},
                                    onFieldSubmitted: (value) {},
                                    validator: MultiValidator([
                                      RequiredValidator(errorText: "Required"),
                                    ]),
                                    cursorColor: Colors.grey,
                                    inputFormatters: [],
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    style: Montserrat.copyWith(
                                      fontSize: 15.sp,
                                      color: const Color(0xff3b2d2f),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                        // helperText: "",
                                        // counterText:  "",
                                        suffixIcon: Container(
                                            margin: EdgeInsets.only(
                                                top: 30.h, left: 38.w),
                                            child: Text(
                                              '\%',
                                              style: Montserrat.copyWith(
                                                fontSize: 15.sp,
                                                color: const Color(0xff3b2d2f),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              softWrap: false,
                                            )),
                                        label: Text("Discount Percentage",
                                            style: Montserrat.copyWith(
                                              fontSize: 18.sp,
                                              color: const Color(0xff766769),
                                              fontWeight: FontWeight.w500,
                                            )),
                                        labelStyle: SegouUI.copyWith(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                        ),
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10.w, vertical: 10.h)),
                                    keyboardType: TextInputType.text,
                                    obscureText: false,
                                  ),
                                ),
                                AnimatedContainer(
                                  margin: EdgeInsets.only(top: 20.h),
                                  duration: Duration(seconds: 1),
                                  width: 304.w,
                                  height: 41.2.h + state.ContainerHeight!.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(12.0.r),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.092),
                                        offset: Offset(0, 2),
                                        blurRadius: 2.r,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 14.h, left: 26.w),
                                            width: 250.96.w,
                                            child: Text(
                                              'Appetizers',
                                              style: Montserrat.copyWith(
                                                fontSize: 18.sp,
                                                color: const Color(0xff766769),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              softWrap: true,
                                            ),
                                          ),
                                          Container(
                                            //      color: Colors.red,
                                            width: 25.w,
                                            height: 20.82.h,
                                            margin: EdgeInsets.only(top: 10.h),
                                            child: IconButton(
                                              padding: EdgeInsets.zero,
                                              constraints:
                                                  const BoxConstraints(),
                                              onPressed: () {
                                                if (state.success!){
                                                  _AddProductScreenBloc.add(
                                                      ChangeAppetizersDropDownSize(
                                                              (b) => b
                                                            ..Length = state
                                                                .AppetizersCateogry!
                                                                .data!
                                                                .length));
                                             //     _AddProductScreenBloc.add(EmptyList());
                                                }


                                              },
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_outlined,
                                                size: 20.w,
                                                color: Color(0xff707070),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      state.ContainerHeight! != 0
                                          ? Container(
                                              margin: EdgeInsets.only(
                                                  right: 31.2.w,
                                                  left: 21.w,
                                                  top: 5.2.h),
                                              child: Divider(
                                                height: 1.h,
                                                thickness: 1,
                                                color: Color(0xff707070),
                                              ))
                                          : Container(),
                                      //
                                      // Row(
                                      //   children: [
                                      //     Container(
                                      //       margin: EdgeInsets.only(
                                      //           left: 18.w,
                                      //           right: 9.w,
                                      //           top: 21.h),
                                      //       child: Text(
                                      //         'Add Country',
                                      //         style: Font1.copyWith(
                                      //             fontSize: 16.sp,
                                      //             fontWeight: FontWeight.w500,
                                      //             height: 1.2.h,
                                      //             color: Color(0xff2B2B2B)),
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                      //
                                      // Container(
                                      //   margin: EdgeInsets.only(top: 12.h,bottom: 28.h),
                                      //   child: DropdownButtonHideUnderline(
                                      //     child: DropdownButton2(
                                      //       isExpanded: true,
                                      //       items: state.Countries!.map((item) =>
                                      //           DropdownMenuItem<String>(
                                      //               value: item,
                                      //               child:Text(
                                      //                 item,
                                      //                 style:Font1.copyWith(
                                      //                   fontSize: 16.sp,
                                      //                   fontWeight: FontWeight.w500,
                                      //                   color: DarkColor,),
                                      //                 overflow: TextOverflow.ellipsis,
                                      //               ))).toList(),
                                      //       value:!state.OldValues_isLoading!
                                      //           ? state.SelectedCountryValue!.isNotEmpty ? state.SelectedCountryValue   : "null"
                                      //
                                      //           :null,
                                      //       onChanged:(value){
                                      //         bloc2.add(ChangeCountryValue((b) => b..Value = value as String));
                                      //         bloc2.add(ChangeCountryCitiesList((b) => b..Country = value as String));
                                      //         CountryValue = value as String;
                                      //
                                      //
                                      //       },
                                      //       icon: Icon(
                                      //         Icons.keyboard_arrow_down,
                                      //         size: 20.w,
                                      //         color: Color(0xff292D32),
                                      //       ),
                                      //       iconSize: 20.w,
                                      //       iconEnabledColor: Colors.yellow,
                                      //       iconDisabledColor: Colors.grey,
                                      //       buttonHeight: 44.h,
                                      //       buttonWidth: 396.w,
                                      //       buttonPadding: EdgeInsets.only(
                                      //           left: 14.w, right: 14.w),
                                      //       buttonDecoration:BoxDecoration(
                                      //         borderRadius:BorderRadius.circular(4.r),
                                      //         border:Border.all(
                                      //           color:DarkColor,
                                      //         ),
                                      //         color: Colors.white,
                                      //       ),
                                      //       buttonElevation: 2,
                                      //       itemHeight: 50.h,
                                      //       dropdownMaxHeight: 170.h,
                                      //       dropdownWidth: 396.w,
                                      //       dropdownDecoration: BoxDecoration(
                                      //           borderRadius:BorderRadius.circular(4.r),
                                      //           color: Colors.white
                                      //       ),
                                      //       dropdownElevation: 8,
                                      //       scrollbarRadius:Radius.circular(2.r),
                                      //       scrollbarThickness: 6,
                                      //       scrollbarAlwaysShow: false,
                                      //     ),
                                      //   ),
                                      // ),
                                      // Row(
                                      //   children: [
                                      //     Container(
                                      //       margin: EdgeInsets.only(
                                      //           left: 18.w, right: 9.w),
                                      //       child: Text(
                                      //         'Choose City',
                                      //         style: Font1.copyWith(
                                      //             fontSize: 16.sp,
                                      //             fontWeight: FontWeight.w500,
                                      //             height: 1.2.h,
                                      //             color: Color(0xff2B2B2B)),
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                      //
                                      // Container(
                                      //   margin: EdgeInsets.only(top: 12.h),
                                      //   child: DropdownButtonHideUnderline(
                                      //     child: DropdownButton2(
                                      //       isExpanded: true,
                                      //       items: state.Country_Cities!.map((item) =>
                                      //           DropdownMenuItem<String>(
                                      //               value:item,
                                      //               child:Text(
                                      //                 item,
                                      //                 style: Font1.copyWith(
                                      //                   fontSize:16.sp,
                                      //                   fontWeight:FontWeight.w500,
                                      //                   color:DarkColor,
                                      //                 ),
                                      //                 overflow:TextOverflow.ellipsis,
                                      //               )
                                      //           )).toList(),
                                      //       value:!state.OldValues_isLoading!
                                      //           ?state.SelectedCityValue!.isNotEmpty ? state.SelectedCityValue  : null
                                      //           :"null",
                                      //       onChanged: (value) {
                                      //         CityValue = value as String;
                                      //         bloc2.add(ChangeCityValue((b) => b..Value = value as String));
                                      //       },
                                      //       icon: Icon(
                                      //         Icons.keyboard_arrow_down,
                                      //         size: 20.w,
                                      //         color: Color(0xff292D32),
                                      //       ),
                                      //       iconSize: 20.w,
                                      //       iconEnabledColor: Colors.yellow,
                                      //       iconDisabledColor: Colors.grey,
                                      //       buttonHeight: 44.h,
                                      //       buttonWidth: 396.w,
                                      //       buttonPadding:EdgeInsets.only(left: 14.w,right: 14.w),
                                      //       buttonDecoration: BoxDecoration(
                                      //         borderRadius:BorderRadius.circular(4.r),
                                      //         border:Border.all(color:DarkColor),
                                      //         color:Colors.white,
                                      //       ),
                                      //       buttonElevation: 2,
                                      //       itemHeight: 50.h,
                                      //       dropdownMaxHeight: 170.h,
                                      //       dropdownWidth: 396.w,
                                      //       dropdownDecoration: BoxDecoration(
                                      //           borderRadius: BorderRadius.circular(4.r),
                                      //           color: Colors.white
                                      //       ),
                                      //       dropdownElevation: 8,
                                      //       scrollbarRadius:Radius.circular(2.r),
                                      //       scrollbarThickness: 6,
                                      //       scrollbarAlwaysShow: false,
                                      //     ),
                                      //   ),
                                      // ),
                                      state.success!?
                                      state.ContainerHeight! != 0
                                          ? Expanded(
                                              child: Container(
                                                  width: 275.w,
                                                  height:
                                                      state.ContainerHeight!.h,
                                                  margin: EdgeInsets.only(
                                                      right: 3.w, top: 13.8.h),
                                                  child: ScrollConfiguration(
                                                      behavior: MyBehavior(),
                                                      child: ListView.separated(
                                                        cacheExtent: 500,
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount: state
                                                            .AppetizersCateogry!
                                                            .data!
                                                            .length,
                                                        itemBuilder:(BuildContext context,
                                                                int index) {
                                                          return Container(
                                                            //  color: Colors.red,
                                                            width: 275.w,
                                                            height: 65.h,
                                                            //    margin: EdgeInsets.only(),
                                                            child: Column(
                                                              children: [
                                                                DropDownMultiSelect(
                                                                  selected_values_style: Montserrat.copyWith(
                                                                    fontSize:
                                                                    18.sp,
                                                                    color: const Color(
                                                                        0xff766769),
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                  ),
                                                                  decoration:InputDecoration(
                                                                    labelStyle:
                                                                    Montserrat
                                                                        .copyWith(
                                                                      fontSize:
                                                                      18.sp,
                                                                      color: const Color(
                                                                          0xff766769),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                    ),
                                                                    contentPadding: EdgeInsets.only(
                                                                        top: 20
                                                                            .h,
                                                                        left: 10
                                                                            .w),
                                                                    focusedErrorBorder:OutlineBorderWidget(
                                                                        Colors.transparent,
                                                                        12.r,
                                                                        1),
                                                                    border:OutlineBorderWidget(
                                                                        Colors
                                                                            .transparent,
                                                                        12.r,
                                                                        1),
                                                                    enabledBorder:OutlineBorderWidget(
                                                                        Colors.transparent,
                                                                        12.r,
                                                                        1),

                                                                  ),
                                                                  onChanged: (List<String> x){
                                                                    print(x);
                                                                    print(index);
                                                                    print(state.SelectedValues_Array!);
                                                                    _AddProductScreenBloc.add(AddSelectedValues((b) => b
                                                                      ..SelectedList = x
                                                                        ..index = index
                                                                    ));
                                                                  },
                                                                  options:state.AllAppetizers![index],
                                                                  selectedValues:state.SelectedValues_Array![index],
                                                                  whenEmpty: state.AppetizersCateogry!
                                                                      .data![index]
                                                                      .name,
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                        separatorBuilder:
                                                            (BuildContext
                                                                    context,
                                                                int index) {
                                                          return SizedBox(
                                                            height: 1.h,
                                                          );
                                                        },
                                                      ))),
                                            )
                                          : Container():Container(),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(top: 18.h, bottom: 92.h),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2(
                                      isExpanded: true,
                                      onMenuStateChange: (value) {
                                        // Controlerr.animateTo(
                                        //     Controlerr.position.maxScrollExtent,
                                        //   duration: Duration(milliseconds: 700),
                                        //   curve: Curves.easeIn,
                                        // );
                                      },
                                      hint: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Branch',
                                              textAlign: TextAlign.left,
                                              style: Montserrat.copyWith(
                                                fontSize: 18.sp,
                                                color: const Color(0xff766769),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      items: state.AllProductCategories!
                                          .map((item) =>
                                              DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: Montserrat.copyWith(
                                                      fontSize: 18.sp,
                                                      color: const Color(
                                                          0xff766769),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                    softWrap: false,
                                                  )))
                                          .toList(),
                                      value: state.SelectedProductCategoryValue!
                                              .isEmpty
                                          ? null
                                          : state.SelectedProductCategoryValue,
                                      onChanged: (value) {
                                        _AddProductScreenBloc.add(ChangeSelectedBranch((b) =>b..Value = value.toString()));
                                        for(int i=0;i<state.ProductCategorys!.data!.length;i++){
                                          if (state.ProductCategorys!.data![i].name==value){
                                            Category_id = state.ProductCategorys!.data![i].id!;
                                            print(Category_id);
                                          }
                                        }
                                      },
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        size: 20.w,
                                        color: Color(0xff707070),
                                      ),
                                      iconSize: 20.w,
                                      iconEnabledColor: Colors.yellow,
                                      iconDisabledColor: Colors.black,
                                      buttonHeight: 43.h,
                                      buttonWidth: 304.w,
                                      buttonPadding: EdgeInsets.only(
                                          left: 26.5.w, right: 4.w),
                                      buttonDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12.0.r),
                                          topRight: Radius.circular(12.0.r),
                                          bottomLeft: Radius.circular(12.0.r),
                                          bottomRight: Radius.circular(12.0.r),
                                        ),
                                        border: Border.all(
                                          color: Color(0xffffffff),
                                        ),
                                        color: Color(0xffffffff),
                                      ),
                                      buttonElevation: 2,
                                      itemHeight: 45.8.h,
                                      dropdownMaxHeight: 224.h,
                                      dropdownWidth: 304.w,
                                      dropdownDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12.0.r),
                                          topRight: Radius.circular(12.0.r),
                                          bottomLeft: Radius.circular(12.0.r),
                                          bottomRight: Radius.circular(12.0.r),
                                        ),
                                        border: Border.all(
                                          color: Color(0xffffffff),
                                        ),
                                        color: Color(0xffffffff),
                                      ),
                                      dropdownElevation: 8,
                                      scrollbarRadius: Radius.circular(8.0.r),
                                      scrollbarThickness: 6,
                                      scrollbarAlwaysShow: false,
                                    ),
                                  ),
                                ),

                                CustomButton(
                                  StructuHeight: 0.4,
                                  BorderRaduis: 31,
                                  onPressed: () {
                                    Platform.isIOS
                                        ? ShowCameraChoicesForIos(
                                            context,
                                            () async {
                                              try {
                                                print('Camera');
                                                 image = await pickImage(
                                                    ImageSource.camera);
                                                 if (image!=null)
                                                if (image!.path.isNotEmpty)
                                                  _AddProductScreenBloc.add(ChangeSelectedImage((b) => b..Value = image));
                                              } catch (e) {
                                                print(e);
                                              }
                                            },
                                            () async {
                                              try {
                                                print('Camera');
                                                print('Upload files');
                                                 image = await pickImage(
                                                    ImageSource.gallery);
                                                if (image!=null)
                                                if (image!.path.isNotEmpty)
                                                  _AddProductScreenBloc.add(
                                                      ChangeSelectedImage((b) =>
                                                          b..Value = image));
                                              } catch (e) {
                                                print(e);
                                              }
                                            },
                                          )
                                        : ShowCameraChoicesForAndroid(
                                            context,
                                            () async {
                                              try {
                                                print('Camera');
                                                 image = await pickImage(
                                                    ImageSource.camera);
                                                if (image!=null)
                                                if (image!.path.isNotEmpty)
                                                  _AddProductScreenBloc.add(ChangeSelectedImage((b) =>  b..Value = image));


                                              } catch (e) {
                                                print(e);
                                              }
                                            },
                                            () async {
                                              try {
                                                print('Camera');
                                                print('Upload files');
                                                 image = await pickImage(
                                                    ImageSource.gallery);
                                                if (image!=null)
                                                if (image!.path.isNotEmpty)
                                                  _AddProductScreenBloc.add(ChangeSelectedImage((b) => b..Value = image));


                                              } catch (e) {
                                                print(e);
                                              }
                                            },
                                          );
                                  },
                                  ButtonText: 'Add Photo',
                                  btnColor: Color(0xffFA3858),
                                  TxtColor: Colors.white,
                                  SocialName: 'Null',
                                  SocialImage: "",
                                  weight: FontWeight.bold,
                                  fontsize: 18.sp,
                                  HeigthBTN: 30,
                                  Widthbtn: 301,
                                  BorderColor: Color(0xffFA3858),
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        left: 36.7.w,
                                        right: 45.7.w,
                                        top: 14.8.h,
                                        bottom: 14.2.h),
                                    child: Divider(
                                      thickness: 1,
                                      color: Color(0xff707070),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 33.w, right: 46.w, bottom: 50.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomButton2(
                                        onPressed:(){},
                                        ButtonText: 'Draft',
                                        btnColor: Colors.white,
                                        TxtColor: Color(0xffFA3858),
                                        SocialName: 'Null',
                                        SocialImage: "",
                                        weight: FontWeight.bold,
                                        fontsize: 18.sp,
                                        HeigthBTN: 30,
                                        Widthbtn: 133,
                                        BorderColor: Colors.white,
                                      ),
                                      CustomButton2(
                                        onPressed: () {
                                         // print(state.SelectedValues_Array);
                                          List<int> SelectedAppetizers_id=[];
                                          print(state.AllAppetizers);
                                          for(int i= 0;i<state.AllAppetizers!.length;i++){
                                            for(int j =0;j<state.AllAppetizers![i].length;j++){
                                              if (state.AppetizersCateogry!.data![i].appetizers![j].name==state.AllAppetizers![i][j]){
                                                print("NAME : ${state.AllAppetizers![i][j]}");
                                                print("ID : ${state.AppetizersCateogry!.data![i].appetizers![j].id}");
                                                SelectedAppetizers_id.add(state.AppetizersCateogry!.data![i].appetizers![j].id!);
                                              }
                                            }
                                          }

                                          if (state.SelectedProductCategoryValue!.isNotEmpty) {
                                            if (image != null) {
                                              if (_formkey1.currentState!.validate()) {
                                              if (Category_id!=0) {
                                                _AddProductScreenBloc.add(
                                                    CreateProduct((b) =>
                                                    b
                                                      ..name = _NameController  .text
                                                      ..price = double.parse( _DiscountController .text)
                                                      ..discount = double.parse(   _DiscountController.text)
                                                      ..description = _DescriptionController .text
                                                      ..category_id = Category_id
                                                      ..photo = state.PhotoFile!
                                                        ..appetizerIds = SelectedAppetizers_id
                                                    ));
                                              }
                                              }
                                            }
                                            else {
                                              showToast(context,
                                                  "please Choose an Image for the Product",
                                                  false);
                                            }
                                          }
                                        },
                                        ButtonText: 'Add',
                                        btnColor: Color(0xffFA3858),
                                        TxtColor: Colors.white,
                                        SocialName: 'Null',
                                        SocialImage: "",
                                        weight: FontWeight.bold,
                                        fontsize: 18.sp,
                                        HeigthBTN: 30,
                                        Widthbtn: 133,
                                        BorderColor: Color(0xffFA3858),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                  SafeArea(
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 31.h, left: 21.w),
                            child: Backbuttonn(() {
                              Navigator.pop(context);
                            }, Colors.black)),
                      ],
                    ),
                  ),
                  SafeArea(
                    child: Container(
                      width: w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 35.h,
                            ),
                            child: Text(
                              'Add Product',
                              style: Montserrat.copyWith(
                                fontSize: 20.sp,
                                color: const Color(0xff3b2d2f),
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
