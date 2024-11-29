import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/popup/popup.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class BluePopupMenu extends StatefulWidget {
  final List<PopupModel> popupItems;
  final double? width;
  final double? height;
  final Widget? icon;
  const BluePopupMenu(
      {super.key,
      required this.popupItems,
      this.icon,
      this.width = 20,
      this.height = 35});

  @override
  State<BluePopupMenu> createState() => _BluePopupMenuState();
}

class _BluePopupMenuState extends State<BluePopupMenu> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: PopupMenuButton<PopupModel>(
        color: AppColors.white,
        position: PopupMenuPosition.over,
        padding: EdgeInsets.zero,
        icon: widget.icon ??
            const Icon(
              Icons.more_vert_outlined,
              color: AppColors.textColor,
              size: 24,
            ),
        itemBuilder: (context) => List.generate(
          widget.popupItems.length,
          (index) => PopupMenuItem(
            onTap: () {
              setState(() {
                widget.popupItems[index].onTap();
              });
            },
            child: Row(
              children: [
                if (widget.popupItems[index].icon != null)
                  widget.popupItems[index].icon!,
                10.horizontalGap,
                Text(
                  widget.popupItems[index].title,
                  style: AppTextStyles.subHeader,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
