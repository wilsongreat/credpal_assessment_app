import 'package:credpal_assessment/config/app_colors.dart';
import 'package:credpal_assessment/data/app_assets.dart';
import 'package:credpal_assessment/data/models/featured_merchant_model.dart';
import 'package:credpal_assessment/presentation/components/custom_text.dart';
import 'package:credpal_assessment/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class FeaturedMerchants extends StatelessWidget {
  const FeaturedMerchants({super.key});

  @override
  Widget build(BuildContext context) {
    final merchants = <FeaturedMerchantsModel>[
      FeaturedMerchantsModel(name:"Justrite",logo:AppAssets.justRitesLogo,color: AppColors.kDarkBlue),
      FeaturedMerchantsModel(name:"Orile Restaurant",logo:AppAssets.orileLogo,color: AppColors.kBlack),
      FeaturedMerchantsModel(name:"Slot",logo:AppAssets.slotLogo,color: AppColors.kRed),
      FeaturedMerchantsModel(name:"Pointtek",logo:AppAssets.pointekLogo,color: AppColors.kSkyBlue),
      FeaturedMerchantsModel(name:"ogabassey",logo: AppAssets.ogaBasseyLogo,color: AppColors.kBgLight, ),
      FeaturedMerchantsModel(name:"Casper Stores",logo:AppAssets.hubMartLogo,color: AppColors.kPink, isActive: false),
      FeaturedMerchantsModel(name:"Dreamworks",logo:AppAssets.dwLogo,color: AppColors.kMidBlue,isActive: false),
      FeaturedMerchantsModel(name:"Hubmart",logo:AppAssets.hubMartLogo,color: AppColors.kBlack),
      FeaturedMerchantsModel(name:"Just Used",logo:AppAssets.jjLogo,color: AppColors.kLigherBlue),
      FeaturedMerchantsModel(name:"Just fones",logo:AppAssets.justFonesLogo,color: AppColors.kBlack),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextView(
                text: "Featured Merchants",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              TextView(
                text:"View all",
                color: AppColors.kBlue,
                fontSize: 14,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            child: Wrap(
              spacing: 12,
              runSpacing: 16,
              children: merchants.map((merchant) {
                return SizedBox(
                  width: fullWidth(context) / 5,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(merchant.logo),
                          merchant.isActive ? Positioned(
                            top: 3,
                            right: 3,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 2),
                              ),
                            ),
                          ) : SizedBox(),
                        ],
                      ),
                      const SizedBox(height: 8),
                      TextView(
                        text:  merchant.name,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),

      ],
    );
  }
}
