import 'package:credpal_assessment/config/app_colors.dart';
import 'package:credpal_assessment/data/app_assets.dart';
import 'package:credpal_assessment/presentation/components/custom_text.dart';
import 'package:credpal_assessment/presentation/components/gap.dart';
import 'package:credpal_assessment/utils/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: 56,
            decoration: BoxDecoration(
              color:  AppColors.kBgLight,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Row(
              children: [
                 SvgPicture.asset(
                   AppAssets.searchIcon,
                   height: 18,
                   width: 18,
                   fit: BoxFit.cover,
                ),
                const SizedBox(width: 12),
                 Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for products or stores",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: AppColors.kBgDark,
                        fontWeight: FontWeight.w400,
                        fontSize: 12
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        /// scan button
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            color: AppColors.kBgLight,
            borderRadius: BorderRadius.circular(16),
          ),
          child: IconButton(
            icon:  SvgPicture.asset(
              AppAssets.scanIcon,
            ),
            onPressed: () {
            },
          ),
        ),
      ],
    );
  }
}

