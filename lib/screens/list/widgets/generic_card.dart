import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../home/widgets/menu_avatar.dart';

class GenericCard extends StatelessWidget {
  const GenericCard({
    super.key,
    required this.name,
    this.borderColor,
    this.img,
    this.url,
    this.outlineImg,
    this.onTap,
  });

  final Border? borderColor;
  final String name;
  final String? img;
  final String? url;
  final bool? outlineImg;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final showImg = img != null || url != null;
    return GestureDetector(
      onTap: () => onTap?.call(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipPath(
            clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: borderColor,
              ),
              child: Row(
                children: [
                  if (showImg)
                    MenuAvatar(
                      img: img,
                      url: url,
                      outlineImg: outlineImg,
                    ),
                  if (showImg)
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 33,
                        right: 40,
                      ),
                      child: Container(
                        width: 3,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(AppColors.outline),
                        ),
                      ),
                    ),
                  Flexible(
                    child: Text(
                      name,
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
