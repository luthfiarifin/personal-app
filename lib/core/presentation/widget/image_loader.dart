import 'package:flutter/material.dart';

class ImageLoader extends StatelessWidget {
  final String url;
  final bool useLoading;
  final double? width;
  final double? height;

  const ImageLoader(
    this.url, {
    super.key,
    this.useLoading = true,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    var image = Image.network(
      url,
      width: width,
      height: height,
      loadingBuilder: !useLoading
          ? null
          : (context, child, loadingProgress) {
              if (loadingProgress == null) return child;

              return Center(
                child: CircularProgressIndicator.adaptive(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
    );

    precacheImage(image.image, context);

    return image;
  }
}
