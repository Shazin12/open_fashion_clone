import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion_clone/constants/image.dart';
import 'package:open_fashion_clone/constants/sized_box.dart';
import 'package:open_fashion_clone/widgets/product_card.dart';

class HomeJustForYou extends StatelessWidget {
  const HomeJustForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 350,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 20,
          children: [
            sizedBoxW5,
            SizedBox(
              height: 350,
              width: 230,
              child: ProductCard(
                image: MyImage.home_product_2,
                name: "Harris Tweed Three button Jacket",
                price: 120,
                image_height: 270,
                name_size: 16.spMin,
                price_size: 16.spMin,
              ),
            ),
            SizedBox(
              height: 350,
              width: 230,
              child: ProductCard(
                image: MyImage.home_product_5,
                name: "Cashmere Blend Cropped Jacket SW1WJ285-AM",
                price: 120,
                image_height: 270,
                name_size: 16.spMin,
                price_size: 16.spMin,
              ),
            ),
            SizedBox(
              height: 350,
              width: 230,
              child: ProductCard(
                image: MyImage.home_product_3,
                name: "Harris Tweed Three button Jacket",
                price: 120,
                image_height: 270,
                name_size: 16.spMin,
                price_size: 16.spMin,
              ),
            ),
            SizedBox(
              height: 350,
              width: 230,
              child: ProductCard(
                image: MyImage.home_product_4,
                name: "Harris Tweed Three button Jacket",
                price: 120,
                image_height: 270,
                name_size: 16.spMin,
                price_size: 16.spMin,
              ),
            ),
            SizedBox(
              height: 350,
              width: 230,
              child: ProductCard(
                image: MyImage.home_product_1,
                name: "Harris Tweed Three button Jacket",
                price: 120,
                image_height: 270,
                name_size: 16.spMin,
                price_size: 16.spMin,
              ),
            ),
            sizedBoxW5,
          ],
        ),
      ),
    );
  }
}
