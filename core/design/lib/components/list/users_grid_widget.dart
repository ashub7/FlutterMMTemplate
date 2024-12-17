import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridWidget extends StatelessWidget {
  final int itemsCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final EdgeInsets? contentPadding;

  const GridWidget({
    super.key,
    required this.itemsCount,
    required this.itemBuilder,
    this.contentPadding
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.w,
        crossAxisSpacing: 8.w,
      ),
      padding: contentPadding ?? EdgeInsets.zero,
      itemCount: itemsCount,
      itemBuilder: itemBuilder,
    );
  }
}
