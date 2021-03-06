import 'package:flutter/cupertino.dart';

class PageModel {
  Color color;
  String? imageAssetPath;
  Image? imageFromUrl;
  String? title;
  String? highlightTitle;
  String? body;
  Widget? child;
  bool? doAnimateChild;
  bool? doAnimateImage;

  PageModel(
      {required this.color,
      this.imageAssetPath,
      this.imageFromUrl,
      required this.title,
      required this.highlightTitle,
      required this.body,
      required this.doAnimateImage});

  PageModel.withChild(
      {required this.child, required this.color, required this.doAnimateChild});
}
