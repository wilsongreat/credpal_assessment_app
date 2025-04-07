import 'package:credpal_assessment/data/app_assets.dart';
import 'package:credpal_assessment/data/models/product_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'products_view_model.g.dart';

@riverpod
class ProductsViewmodel extends _$ProductsViewmodel{
  @override
  FutureOr<dynamic> build() {
    return null;
  }

  final products = <ProductModel>[
    ProductModel(productImg: AppAssets.nokiaImg, distributorLogo: AppAssets.payImg,productName: 'Nokia G20', productPrice: '₦ 39,780', previousPrice: '₦ 88,000'),
    ProductModel(productImg: AppAssets.ipxsImg,distributorLogo: AppAssets.ogaBasseyImg, productName: 'iPhone XS Max 4G RAM,256GB', productPrice: '₦ 295,999', previousPrice: '₦ 315,000'),
    ProductModel(productImg: AppAssets.ankerImg,distributorLogo: AppAssets.okayfonesImg, productName: 'Anker Soundcore', productPrice: '₦ 39,780', previousPrice: '₦ 88,000'),
    ProductModel(productImg: AppAssets.ip12Img,distributorLogo: AppAssets.imatestoresImg, productName: 'iPhone 12 Pro', productPrice: '₦ 490,500', previousPrice: '₦ 515,000'),
    ProductModel(productImg: AppAssets.ip12Img,distributorLogo: AppAssets.imatestoresImg, productName: 'iPhone 12 Pro', productPrice: '₦ 490,500', previousPrice: '₦ 515,000'),
    ProductModel(productImg: AppAssets.ankerImg,distributorLogo: AppAssets.okayfonesImg, productName: 'Anker Soundcore', productPrice: '₦ 39,780', previousPrice: '₦ 88,000'),
    ProductModel(productImg: AppAssets.ipxsImg,distributorLogo: AppAssets.ogaBasseyImg, productName: 'iPhone XS Max 4G RAM,256GB', productPrice: '₦ 295,999', previousPrice: '₦ 315,000'),
    ProductModel(productImg: AppAssets.nokiaImg, distributorLogo: AppAssets.payImg,productName: 'Nokia G20', productPrice: '₦ 39,780', previousPrice: '₦ 88,000'),
  ];

}