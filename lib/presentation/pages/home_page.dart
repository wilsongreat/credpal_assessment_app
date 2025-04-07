import 'package:credpal_assessment/config/app_colors.dart';
import 'package:credpal_assessment/presentation/components/custom_search_input.dart';
import 'package:credpal_assessment/presentation/components/home_page_widgets/featured_merchants_widget.dart';
import 'package:credpal_assessment/presentation/components/gap.dart';
import 'package:credpal_assessment/presentation/components/home_page_widgets/home_header.dart';
import 'package:credpal_assessment/presentation/components/home_page_widgets/product_card.dart';
import 'package:credpal_assessment/provider/products_view_model.dart';
import 'package:credpal_assessment/utils/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    /// provider for products
    final provider = ref.watch(productsViewmodelProvider.notifier);
    return  Scaffold(
      backgroundColor: AppColors.kWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// page header
            HomeHeader(),

            /// search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child: CustomSearchBar(),
            ),

            /// product list
            Container(
              height: fullHeight(context) * .65,
              width: fullWidth(context),
              color: AppColors.kBgLight,
              padding: EdgeInsets.only(right: 20,top: 20,bottom: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: fullHeight(context) * .6,
                    child: GridView.count(
                      padding: EdgeInsets.only(top: 15, bottom: 20, left: 20),
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 15,
                      crossAxisCount: 2,
                      scrollDirection: Axis.horizontal,
                      childAspectRatio: 1.3,
                      children: List.generate(provider.products.length, (index) {
                        final product = provider.products[index];
                        return ProductCard(
                          productName: product.productName,
                          productImg: product.productImg,
                          productPrice: product.productPrice,
                          previousPrice: product.previousPrice,
                          distributorLogo: product.distributorLogo,
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
            Gap(20),
            /// featured merchants
            FeaturedMerchants()
          ],
        ),
      ),
    );
  }

}







