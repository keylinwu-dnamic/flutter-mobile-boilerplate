import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class MenuAvatar extends StatelessWidget {
  const MenuAvatar({super.key, this.img, this.url, this.outlineImg});
  final String? img;
  final String? url;
  final bool? outlineImg;

  @override
  Widget build(BuildContext context) {
    dynamic imgWidget = img != null
        ? AssetImage(
            img!,
          )
        : null;

    imgWidget = url != null ? NetworkImage(url!) : imgWidget;

    final showOutline = outlineImg != null && outlineImg!;

    return CircleAvatar(
      radius: showOutline ? 55 : 50,
      backgroundColor: const Color(AppColors.outline),
      child: CircleAvatar(
        radius: 50,
        backgroundImage: imgWidget,
      ),
    );
  }
}
