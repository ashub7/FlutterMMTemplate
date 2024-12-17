import 'package:design/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'image/user_image_widget.dart';

class UserGridTile extends StatelessWidget {
  final String? userImageUrl;
  final String? userName;
  final Function()? onItemClicked;

  const UserGridTile(
      {super.key,
      required this.userImageUrl,
      required this.userName,
      this.onItemClicked});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.only(topRight: Radius.circular(12)),
      onTap: () => onItemClicked?.call(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserImageWidget(
              height: 150,
              imageUrl: userImageUrl ?? "",
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          5.verticalSpaceFromWidth,
          Text(
            userName ?? "",
            style: context.titleMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
