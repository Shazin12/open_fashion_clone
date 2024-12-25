import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion_clone/constants/color.dart';
import 'package:open_fashion_clone/constants/sized_box.dart';
import 'package:open_fashion_clone/widgets/app_image.dart';
import 'package:open_fashion_clone/widgets/app_text.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final int price;
  final double image_height;
  final double? name_size;
  final double? price_size;

  const ProductCard({
    super.key,
    this.image_height = 200,
    required this.image,
    required this.name,
    required this.price,
    this.name_size,
    this.price_size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          SizedBox(
            // color: MyColor.placeholder,
            height: image_height,
            width: double.infinity,
            child: AppImage(
              fit: BoxFit.fill,
              image: image,
              height: image_height,
            ),
          ),
          sizedBoxH5,
          AppText(
            name,
            maxLines: 3,
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: MyColor.body,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w400,
            fontSize: name_size ?? 12.spMin,
          ),
          AppText(
            "\$$price",
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: MyColor.primary,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w400,
            fontSize: price_size ?? 15.spMin,
          ),
        ],
      ),
    );
  }
}
