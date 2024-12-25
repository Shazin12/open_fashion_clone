import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_fashion_clone/constants/color.dart';
import 'package:open_fashion_clone/constants/image.dart';
import 'package:open_fashion_clone/constants/sized_box.dart';
import 'package:open_fashion_clone/main.dart';
import 'package:open_fashion_clone/provider/theme_pro.dart';
import 'package:open_fashion_clone/widgets/app_image.dart';
import 'package:open_fashion_clone/widgets/app_text.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HomeCollections extends StatelessWidget {
  const HomeCollections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 40,
      children: [
        SizedBox(
          height: 280.hMin,
          width: double.infinity,
          child: image1(context),
        ),
        SizedBox(
          height: 280.hMin,
          width: double.infinity,
          child: image2(context),
        ),
        SizedBox(
          height: 280.hMin,
          width: double.infinity,
          child: image3(context),
        ),
      ],
    );
  }

  Widget image3(BuildContext context) {
    return Stack(
      children: [
        AppImage(
          image: MyImage.home_collection_3,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Center(
          child: CircleAvatar(
            backgroundColor: MyColor.title_active.withOpacity(0.5),
            child: Icon(
              Icons.play_arrow,
              color: MyColor.offwhite,
            ),
          ),
        )
      ],
    );
  }

  Widget image2(BuildContext context) {
    return Stack(
      children: [
        AppImage(
          image: MyImage.home_collection_2,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              sizedBoxH40,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppText(
                    "Autumn",
                    text2: "\ncollection".toUpperCase(),
                    maxLines: 2,
                    fontSize: 40.spMin,
                    height2: 0.5,
                    textAlign: TextAlign.center,
                    fontSize2: 12.spMin,
                    color: MyColor.body,
                    color2: MyColor.title_active,
                    fontFamily2: context.read<ThemePro>().font,
                    fontFamily:
                        GoogleFonts.bodoniModa(fontStyle: FontStyle.italic)
                            .fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width / 3.5)
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget image1(BuildContext context) {
    return Stack(
      children: [
        AppImage(
          image: MyImage.home_collection_1,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            height: 200,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AppText(
                  DateFormat("dd").format(DateTime.now()),
                  fontSize: 150.spMin,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: MyColor.body.withOpacity(0.5),
                  fontFamily:
                      GoogleFonts.bodoniModa(fontStyle: FontStyle.italic)
                          .fontFamily,
                  fontWeight: FontWeight.bold,
                ),
                AppText(
                  DateFormat("MMMM").format(DateTime.now()),
                  text2: "\ncollection".toUpperCase(),
                  maxLines: 3,
                  fontSize2: 18.spMin,
                  fontSize: 30.spMin,
                  color: MyColor.offwhite,
                  height2: 0.8,
                  textAlign: TextAlign.center,
                  fontFamily2: context.read<ThemePro>().font,
                  fontFamily:
                      GoogleFonts.bodoniModa(fontStyle: FontStyle.italic)
                          .fontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
