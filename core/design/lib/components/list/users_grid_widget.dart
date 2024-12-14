import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridWidget extends StatelessWidget {
  final int itemsCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;

  const GridWidget({
    super.key,
    required this.itemsCount,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.w,
        crossAxisSpacing: 8.w,
      ),
      padding: const EdgeInsets.all(8).w,
      itemCount: itemsCount,
      itemBuilder: itemBuilder,
    );
  }
}
