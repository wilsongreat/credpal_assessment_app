import 'package:credpal_assessment/config/app_colors.dart';
import 'package:credpal_assessment/presentation/components/custom_text.dart';
import 'package:credpal_assessment/utils/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String previousPrice;
  final String productImg;
  final String distributorLogo;
  const ProductCard({super.key, required this.productName, required this.productPrice, required this.previousPrice, required this.productImg, required this.distributorLogo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth(context) * .4,
      height: fullHeight(context) *.4,
      padding: const EdgeInsets.all(16),
      // margin: EdgeInsets.only( left: 20),
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 4,
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: fullHeight(context) * .14,
                child: Center(
                  child: Image.asset(
                   productImg,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 12),
               TextView(
                text: productName,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                 textOverflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  TextView(
                    text:  productPrice,
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: AppColors.kBlue,
                  ),
                  SizedBox(width: 8),
                  TextView(
                    text:  previousPrice,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.kWhite,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.2),
                      spreadRadius: 4,
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: SvgPicture.asset(distributorLogo)
            ),
          ),
        ],
      ),
    );
  }
}
