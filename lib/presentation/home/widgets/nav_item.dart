import 'package:diamond_store_app/core/constants/colors.dart';
import 'package:diamond_store_app/core/extensions/spaces_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavItems extends StatelessWidget {
  final String label;
  final String iconPath;
  final bool isActive;
  final VoidCallback onTap;

  const NavItems(
      {super.key,
      required this.label,
      required this.iconPath,
      required this.isActive,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(1.0)),
        child: Container(
          width: 121.0,
          height: 44.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: isActive ? AppsColors.primary : AppsColors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20.0,
                height: 20.0,
                child: SvgPicture.asset(
                  iconPath,
                  colorFilter: ColorFilter.mode(
                    isActive ? AppsColors.white : AppsColors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              6.width,
              Text(
                label,
                style: TextStyle(
                    fontSize: 12,
                    color: isActive ? AppsColors.white : AppsColors.black,
                    fontWeight: isActive ? FontWeight.w600 : FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
