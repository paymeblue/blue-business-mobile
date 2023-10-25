import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarItem extends StatelessWidget {
  final String name;
  final Function onTap;
  final bool isActive;
  const NavBarItem(
      {Key? key,
      required this.name,
      required this.onTap,
      required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1500),
        width: size.width / 6,
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              isActive
                  ? AppAssets.activeNavItemIcon(name.toLowerCase())
                  : AppAssets.inactiveNavItemIcon(name.toLowerCase()),
              height: 20,
              width: 20,
            ),
            const SizedBox(height: 11),
            Text(
              name,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: isActive
                      ? AppColors.primaryColor
                      : const Color(0xFF666B7E)),
            )
          ],
        ),
      ),
    );
  }
}
