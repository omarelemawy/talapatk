import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:talapatk/core/routes/app_pages.dart';
import 'package:talapatk/core/theme/app_colors.dart';
import 'package:talapatk/core/widgets/custom_button.dart';
import 'package:talapatk/core/widgets/custom_text.dart';
import 'package:talapatk/features/auth_feature/presentation/map_page/controllers/map_page_controller.dart';

class MapPageView extends StatelessWidget {
  const MapPageView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MapPageController>(
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              GoogleMap(
                initialCameraPosition: const CameraPosition(
                    zoom: 16, target: LatLng(30.033333, 31.233334)),
                // set markers on google map

                // on below line we have given map type
                mapType: controller.mapType == true
                    ? MapType.hybrid
                    : MapType.normal,
                // line between current location and driver location

                compassEnabled: false,
                zoomControlsEnabled: false,

                // below line displays google map in our app
                onMapCreated: (GoogleMapController controller) {},
              ),
              Positioned(
                  bottom: 60,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.changeMapType();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Icon(
                            Icons.map,
                            color: AppColors.mainApp,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                        onPressed: () {
                          Get.toNamed(Routes.mainLayout);
                        },
                        width: MediaQuery.of(context).size.width - 40,
                        height: 50,
                        child: CustomText("التوصيل الي",
                            style: context.textTheme.headlineLarge!
                                .copyWith(fontSize: 20, color: Colors.white)),
                      )
                    ],
                  ))
            ],
          ),
        );
      },
    );
  }
}
