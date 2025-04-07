import 'package:credpal_assessment/config/app_colors.dart';
import 'package:credpal_assessment/data/app_assets.dart';
import 'package:credpal_assessment/presentation/components/custom_text.dart';
import 'package:credpal_assessment/presentation/components/gap.dart';
import 'package:credpal_assessment/utils/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: fullHeight(context)* .22,
      width: fullWidth(context) ,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      color: AppColors.kBg,
      alignment: Alignment.center,
      child: SizedBox(
        height: fullHeight(context)* .15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextView(text: 'Pay later\neverywhere', fontSize: 28,fontWeight: FontWeight.w800,),
                Gap(10),
                Padding(
                  padding: const EdgeInsets.only(bottom: 13.0),
                  child: SvgPicture.asset(AppAssets.detailsIcon),
                )
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextView(text: 'Shopping limit: ₦0',fontWeight: FontWeight.w500,),
                Gap(5),
                Container(
                  height: 43,
                  width: fullWidth(context) * .35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.kBlue,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: TextView(text: 'Activate Credit',fontSize: 13, fontWeight: FontWeight.w700,color: AppColors.kWhite,),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
