import 'dart:async';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_fashion_clone/widgets/container_shimner.dart';

import 'app_text.dart';
import 'loader.dart';

class AppImage extends StatelessWidget {
  final dynamic image;
  final double? height;
  final double? width;
  final double scale;
  final FilterQuality quality;
  final Color? color;
  final BoxFit fit;

  const AppImage({
    super.key,
    required this.image,
    this.quality = FilterQuality.low,
    this.fit = BoxFit.contain,
    this.height,
    this.width,
    this.color,
    this.scale = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    if (image.runtimeType.toString() == "Uint8List") {
      return Image.memory(
        image,
        fit: fit,
        height: height,
        width: width,
        color: color,
        scale: scale,
      );
    } else if (image.startsWith("http")) {
      return CachedNetworkImage(
        filterQuality: quality,
        imageUrl: image,
        fit: fit,
        height: height,
        width: width,
        color: color,
        progressIndicatorBuilder: (_, s, p) => _ImageLoader(
          image: image,
          height: height,
        ),
        errorWidget: (context, url, error) {
          return const Material(
            type: MaterialType.transparency,
            child: Center(
              child: AppText(
                "Image error",
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          );
        },
      );
    } else if (image.split('.').last == 'svg') {
      return SvgPicture.asset(
        image,
        height: height,
        width: width,
        fit: fit,
        // ignore: deprecated_member_use
        color: color,
      );
    } else if (image.startsWith("asset")) {
      return Image.asset(
        image,
        fit: fit,
        height: height,
        width: width,
        color: color,
        scale: scale,
      );
    } else {
      return Image.file(
        File(image),
        frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
          if (frame != null) return child;
          return _ImageLoader(
            image: image,
            height: height,
          );
        },
        errorBuilder: (context, error, stackTrace) {
          return const AppText(
            "Image Not Found",
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
          );
        },
        fit: fit,
        height: height,
        width: width,
        color: color,
        scale: scale,
      );
    }
  }
}

class _ImageLoader extends StatefulWidget {
  final String image;
  final double? height;
  const _ImageLoader({required this.image, this.height});

  @override
  State<_ImageLoader> createState() => __ImageLoaderState();
}

class __ImageLoaderState extends State<_ImageLoader> {
  Size size = Size.zero;

  @override
  void initState() {
    getSize();
    super.initState();
  }

  Future<void> getSize() async {
    if (!widget.image.startsWith("http")) return;
    setState(() {
      size = Size.zero;
    });
    var s = await _getImageSize(widget.image);
    setState(() {
      size = s;
    });
  }

  Future<Size> _getImageSize(String link) {
    Completer<Size> completer = Completer();
    Image image = Image.network(link);
    image.image.resolve(const ImageConfiguration()).addListener(
      ImageStreamListener(
        (ImageInfo image, bool synchronousCall) {
          var myImage = image.image;
          Size size = Size(myImage.width.toDouble(), myImage.height.toDouble());
          completer.complete(size);
        },
      ),
    );

    return completer.future;
  }

  @override
  void setState(VoidCallback fn) {
    if (!mounted) return;
    super.setState(fn);
  }

  @override
  void didUpdateWidget(covariant _ImageLoader oldWidget) {
    if (widget.image != oldWidget.image) getSize();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.height != null) {
      double aspectRatio = size == Size.zero ? 1 : size.width / widget.height!;
      return AspectRatio(
        aspectRatio: aspectRatio <= 0 ? 1 : aspectRatio,
        child: ContainerShimner(
          borderRadius: BorderRadius.zero,
          height: size.height,
          width: size.width,
        ),
      );
    }
    if (size == Size.zero) {
      return const Center(child: Loader(loaderOnly: true));
    } else {
      double aspectRatio = size.width / size.height;
      return AspectRatio(
        aspectRatio: aspectRatio <= 0 ? 1 : aspectRatio,
        child: ContainerShimner(
          borderRadius: BorderRadius.zero,
          height: size.height,
          width: size.width,
        ),
      );
    }
  }
}
