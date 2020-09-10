import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inspect_pix/ui/constant/app_color.dart';
import 'package:inspect_pix/ui/constant/font_name.dart';
import 'package:inspect_pix/ui/constant/image_name.dart';
import 'package:inspect_pix/widgets/text_input.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  PageController pageController = new PageController();
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _markers = new Set();

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))
        .buffer
        .asUint8List();
  }

  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;

  Future<void> setMark() async {
    Uint8List markerIcon = await getBytesFromAsset(ImageName.home, 100);
    Uint8List markerIconBig = await getBytesFromAsset(ImageName.home, 200);
    Uint8List markerIcon2 = await getBytesFromAsset(ImageName.home, 100);
    Uint8List markerIcon2Big = await getBytesFromAsset(ImageName.home, 200);
    Uint8List markerIcon3 = await getBytesFromAsset(ImageName.homered, 100);
    Uint8List markerIcon3Big = await getBytesFromAsset(ImageName.homered, 200);
    Uint8List markerIcon4 = await getBytesFromAsset(ImageName.homered, 100);
    Uint8List markerIcon4Big = await getBytesFromAsset(ImageName.homered, 200);

    BitmapDescriptor icon = BitmapDescriptor.fromBytes(markerIcon);
    BitmapDescriptor iconBig = BitmapDescriptor.fromBytes(markerIconBig);
    BitmapDescriptor icon2 = BitmapDescriptor.fromBytes(markerIcon2);
    BitmapDescriptor icon2Big = BitmapDescriptor.fromBytes(markerIcon2Big);
    BitmapDescriptor icon3 = BitmapDescriptor.fromBytes(markerIcon3);
    BitmapDescriptor icon3Big = BitmapDescriptor.fromBytes(markerIcon3Big);
    BitmapDescriptor icon4 = BitmapDescriptor.fromBytes(markerIcon4);
    BitmapDescriptor icon4Big = BitmapDescriptor.fromBytes(markerIcon4Big);

    CameraPosition temp = CameraPosition(
      target: LatLng(23.8224723 + 0.02, 90.4219536 + 0.02),
      zoom: 12.4746,
    );

    _markers.add(
      Marker(
        onTap: () {
          setState(() {
            print('icon one pressed');

            isPressed1 = true;
            isPressed2 = false;
            isPressed3 = false;
            isPressed4 = false;

            pageController.animateToPage(1,
                duration: Duration(seconds: 1),
                curve: Cubic(0.4, 0.0, 0.2, 1.0));
          });
        },

        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(temp.target.toString()),
        position: temp.target,
        infoWindow: InfoWindow(
          title: " Position 1",
          snippet: " description 1",
        ),
        icon: isPressed1 ? iconBig : icon,
      ),
    );

    temp = CameraPosition(
      target: LatLng(23.8224723 + 0.04, 90.4219536 + 0.04),
      zoom: 12.4746,
    );
    _markers.add(Marker(
      onTap: () {
        setState(() {
          isPressed1 = false;
          isPressed2 = true;
          isPressed3 = false;
          isPressed4 = false;

          icon = icon2Big;
          pageController.animateToPage(2,
              duration: Duration(seconds: 1), curve: Cubic(0.4, 0.0, 0.2, 1.0));
        });
      },

      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(temp.target.toString()),
      position: temp.target,
      infoWindow: InfoWindow(
        title: " Position 2",
        snippet: " description 2",
      ),
      icon: isPressed2 ? icon2Big : icon2,
    ));
    temp = CameraPosition(
      target: LatLng(23.8224723 + 0.04, 90.4219536 + 0.02),
      zoom: 12.4746,
    );


    _markers.add(Marker(
      onTap: () {
        setState(() {
          isPressed1 = false;
          isPressed2 = false;
          isPressed3 = true;
          isPressed4 = false;

          icon = icon2Big;
          pageController.animateToPage(3,
              duration: Duration(seconds: 1), curve: Cubic(0.4, 0.0, 0.2, 1.0));
        });
      },

      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(temp.target.toString()),
      position: temp.target,
      infoWindow: InfoWindow(
        title: " Position 3",
        snippet: " description 3",
      ),
      icon: isPressed3 ? icon3Big : icon3,
    ));
    temp = CameraPosition(
      target: LatLng(23.8224723 - 0.02, 90.4219536 - 0.02),
      zoom: 12.4746,
    );
    _markers.add(Marker(
      onTap: () {
        setState(() {
          isPressed1 = false;
          isPressed2 = false;
          isPressed3 = false;
          isPressed4 = true;

          icon = icon2Big;
          pageController.animateToPage(4,
              duration: Duration(seconds: 1), curve: Cubic(0.4, 0.0, 0.2, 1.0));
        });
      },

      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(temp.target.toString()),
      position: temp.target,
      infoWindow: InfoWindow(
        title: " Position 4",
        snippet: " description 4",
      ),
      icon: isPressed4 ? icon4Big : icon4,
    ));

    setState(() {
      setMark();
    });
  }



  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(
      23.8224723,
      90.4219536,
    ),
    zoom: 11.4746,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setMark();
    // markerList();
  }

  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(MediaQuery.of(context).size).wp;
    // final Function hp = Screen(MediaQuery.of(context).size).hp;
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            markers: _markers,
            compassEnabled: false,
            myLocationEnabled: false,
            mapToolbarEnabled: false,
            tiltGesturesEnabled: false,
            myLocationButtonEnabled: false,
            trafficEnabled: false,
            zoomControlsEnabled: false,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: AppColors.blue,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Back to list',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: FontName.openSansSemibold,
                              color: AppColors.blue),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextInputWithPrefixSuffix(
                    backgroundColor: AppColors.backGroundColor,
                    hint: 'Search',
                    borderColor: AppColors.borderColor,
                    prefixItem: Icon(
                      Icons.search,
                      color: AppColors.blue,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 120,
                    child: PageView.builder(
                      itemCount: _markers.length,
                      controller: pageController,
                      itemBuilder: (context, i) {
                        return Container(
                          height: 120,
                          width: wp(100),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'I-PROPERTY INSPECTION',
                                    style: TextStyle(
                                      color: AppColors.green,
                                      fontSize: 12.0,
                                      fontFamily: FontName.openSansSemibold,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.camera_alt,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '$i',
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: 12.0,
                                      fontFamily: FontName.openSansSemibold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: wp(100),
                                child: Text(
                                  '5703 Christine Ln\nRussellville, Tennessee(TN), 37860',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontFamily: FontName.openSansRegular,
                                    fontSize: 8.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Aug 26 - Sep 01',
                                    style: TextStyle(
                                      color: AppColors.blue,
                                      fontSize: 12.0,
                                      fontFamily: FontName.openSansSemibold,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
