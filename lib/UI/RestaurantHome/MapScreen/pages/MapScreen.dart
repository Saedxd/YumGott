import 'package:Yumgott/Core/widgets/CustomButton.dart';
import 'package:Yumgott/UI/RestaurantHome/MapScreen/bloc/MapScreenBloc.dart';
import 'package:Yumgott/UI/RestaurantHome/MapScreen/bloc/MapScreen_Event.dart';
import 'package:Yumgott/UI/RestaurantHome/MapScreen/bloc/MapScreen_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Yumgott/Data/prefs_helper/iprefs_helper.dart';
import 'package:Yumgott/Injection.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapScreen extends StatefulWidget {
   MapScreen({Key? key,this.AddMarker}) : super(key: key);
VoidCallback? AddMarker;
  @override
  State<MapScreen> createState() => _MapScreenState();
}
final MMapScreenBloc = sl<MapScreenBloc>();

class _MapScreenState extends State<MapScreen> {
final pref = sl<IPrefsHelper>();





  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return

    BlocBuilder(
      bloc: MMapScreenBloc,
      builder: (BuildContext context, MapScreenState state)
    {
      return
      Scaffold(
            body:SafeArea(
              child: Container(
                width: w,
                height: h,
                child:Stack(
                  children: [
                    Container(
                      child: GoogleMap(
                        onCameraMove:
                            (CameraPosition cameraPosition) {},
                        myLocationButtonEnabled: true,
                        onLongPress: (location) {
                          print(location);
                          Marker M = Marker(
                            markerId: MarkerId("location"),
                            position: location,
                            onTap: () {},
                          );
                          MMapScreenBloc.add(AddMarkers((b) => b..marker = M));

                        },
                        onTap: (location) {},
                        zoomControlsEnabled: true,
                        // circles: state.GetAllBubblesIsloading!
                        //     ? Loading
                        //     : state.MakeHimBEableTOSEtBubble!
                        //     ? state.NewBubble_circle!
                        //     : state.circle!,
                        mapType: MapType.hybrid,
                        markers: !state.NewMarker_isLoading!
                            ? state.New_marker2!
                            : {},

                        // state.GetAllBubblesIsloading!
                        //     ? LOadingg
                        //     : state.MakeHimBEableTOSEtBubble!
                        //     ? state.NewBubble_marker2!
                        //     : state.marker2!,
                        // initialCameraPosition: CameraPosition(
                        //     target: LatLng(state.Userlat, state.Userlng),
                        //     zoom: 12.151926040649414),
                        onMapCreated: (controller) {
                          // _googleMapController = controller;
                          // _controller.complete(controller);
                          // changeMapMode();
                        },
                        myLocationEnabled: true,
                        zoomGesturesEnabled: true,
                        compassEnabled: true,
                        buildingsEnabled: false,

                        initialCameraPosition: CameraPosition(
                            target: LatLng(38.9637, 35.2433),
                            zoom: 5.151926040649414),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 30.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Center(
                            child: CustomButton(
                              StructuHeight: 0.4,
                              BorderRaduis: 31,
                              onPressed:(){
                                Navigator.pop(context);
                              },
                              ButtonText: 'Confirm Location',
                              btnColor: Color(0xffFA3858),
                              TxtColor: Colors.white,
                              SocialName: 'Null',
                              SocialImage: "",
                              weight: FontWeight.bold,
                              fontsize: 13.sp,
                              HeigthBTN: 40,
                              Widthbtn: 200,
                              BorderColor: Color(0xffFA3858),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                ),
            ),
          );
    }
    );
  }
}

