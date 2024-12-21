import 'package:design/extensions/resources_ext.dart';
import 'package:design/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApiErrorWidget extends StatelessWidget {
  final String? errorText;
  final Function() onRetry;
  const ApiErrorWidget({super.key, required this.errorText, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Icon(Icons.warning_amber_outlined, size: 60.w,),
          15.verticalSpacingRadius,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40).w,
            child: Text(
              errorText?? "Network error",
              textAlign: TextAlign.center,
              style: context.bodyLarge,
            ),
          ),
          12.verticalSpacingRadius,
          TextButton(
              onPressed: onRetry,
              child: Text(
                "Retry",
                style: context.titleMedium,
              ))
        ],
      ),
    );
  }
}
