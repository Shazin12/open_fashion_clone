// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion_clone/constants/color.dart';
import 'package:open_fashion_clone/constants/image.dart';
import 'package:open_fashion_clone/constants/sized_box.dart';
import 'package:open_fashion_clone/main.dart';
import 'package:open_fashion_clone/widgets/app_image.dart';
import 'package:open_fashion_clone/widgets/app_text.dart';
import 'package:open_fashion_clone/widgets/cus_appbar.dart';
import 'package:open_fashion_clone/widgets/widget_size.dart';

import '../widgets/product_card.dart';
import '../widgets/rhombus_divider.dart';
import 'widgets/home_bottom.dart';
import 'widgets/home_brand_logo.dart';
import 'widgets/home_collections.dart';
import 'widgets/home_company_features.dart';
import 'widgets/home_followus.dart';
import 'widgets/home_just_for_you.dart';
import 'widgets/home_tabbar.dart';
import 'widgets/home_tags.dart';
import 'widgets/home_top.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          top: false,
          child: Column(
            children: [
              Container(
                color: MyColor.appbar,
                height: MediaQuery.paddingOf(context).top,
              ),
              CusAppBar(),
              HomeTopImage(),
              sizedBoxH50,
              WidgetSizeNotifier(
                builder: (_, s, w) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppText(
                            "New Arrival".toUpperCase(),
                            fontWeight: FontWeight.w400,
                            fontSize: 18.spMin,
                            color: MyColor.title_active,
                          ),
                          sizedBoxH5,
                          RhombusDivider(width: s.width)
                        ],
                      ),
                    ],
                  );
                },
              ),
              sizedBoxH20,
              HomeTabbar(),
              sizedBoxH10,
              SizedBox(
                width: double.infinity,
                child: GridView(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0,
                    mainAxisExtent: 260,
                    maxCrossAxisExtent: 260,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ProductCard(
                      image: MyImage.home_product_1,
                      name: "21WN reversible angora cardigan",
                      price: 120,
                    ),
                    ProductCard(
                      image: MyImage.home_product_2,
                      name: "21WN reversible angora cardigan",
                      price: 120,
                    ),
                    ProductCard(
                      image: MyImage.home_product_3,
                      name: "21WN reversible angora cardigan",
                      price: 120,
                    ),
                    ProductCard(
                      image: MyImage.home_product_4,
                      name: "Oblong bag",
                      price: 120,
                    ),
                  ],
                ),
              ),
              sizedBoxH50,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppText(
                    "Explore More",
                    color: MyColor.title_active,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.spMin,
                  ),
                  sizedBoxW5,
                  AppImage(
                    image: MyImage.arrow_right,
                    height: 18.spMin,
                    width: 18.spMin,
                    color: MyColor.title_active,
                  )
                ],
              ),
              sizedBoxH50,
              RhombusDivider(width: MediaQuery.sizeOf(context).width / 2.5),
              sizedBoxH50,
              HomeBrandLogo(),
              sizedBoxH50,
              RhombusDivider(width: MediaQuery.sizeOf(context).width / 2.5),
              sizedBoxH50,
              AppText(
                "Collections".toUpperCase(),
                fontWeight: FontWeight.w400,
                color: MyColor.title_active,
                fontSize: 18.spMin,
              ),
              sizedBoxH50,
              HomeCollections(),
              sizedBoxH50,
              AppText(
                "just for you".toUpperCase(),
                fontWeight: FontWeight.w400,
                color: MyColor.title_active,
                fontSize: 18.spMin,
              ),
              sizedBoxH10,
              RhombusDivider(width: MediaQuery.sizeOf(context).width / 2.5),
              sizedBoxH50,
              HomeJustForYou(),
              sizedBoxH50,
              AppText(
                "@ Trending".toUpperCase(),
                fontWeight: FontWeight.w400,
                color: MyColor.title_active,
                fontSize: 18.spMin,
              ),
              sizedBoxH50,
              HomeTags(),
              sizedBoxH50,
              HomeCompanyFeatures(),
              sizedBoxH50,
              AppText(
                "follow us".toUpperCase(),
                fontWeight: FontWeight.w400,
                color: MyColor.title_active,
                fontSize: 18.spMin,
              ),
              sizedBoxH10,
              AppImage(
                image: MyImage.insta,
                color: MyColor.title_active,
                height: 24.wMin,
                width: 24.wMin,
              ),
              sizedBoxH40,
              HomeFollowUs(),
              sizedBoxH50,
              Row(
                children: [
                  Expanded(child: SizedBox()),
                  Expanded(child: AppImage(image: MyImage.twitter_fill)),
                  Expanded(child: AppImage(image: MyImage.insta_fill)),
                  Expanded(child: AppImage(image: MyImage.youtube_fill)),
                  Expanded(child: SizedBox()),
                ],
              ),
              sizedBoxH50,
              RhombusDivider(width: MediaQuery.sizeOf(context).width / 2.5),
              sizedBoxH30,
              AppText(
                "support@openui.design\n+60 825 876\n08:00 - 22:00 - Everyday",
                textAlign: TextAlign.center,
                maxLines: 4,
                height: 2.2,
                fontWeight: FontWeight.w400,
                fontSize: 16.spMin,
                color: MyColor.body,
              ),
              sizedBoxH30,
              RhombusDivider(width: MediaQuery.sizeOf(context).width / 2.5),
              sizedBoxH50,
              HomeBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
