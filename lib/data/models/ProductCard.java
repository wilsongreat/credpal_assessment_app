class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth(context) * .47,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
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
                  child: GridPaper(
                    color: AppColors.kBlue,
                    child: Image.asset(
                      AppAssets.ip12Img,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "iPhone 12 Pro",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children:  [
                  TextView(
                   text:  "₦ 490,500",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.kBlue,
                  ),
                  SizedBox(width: 8),
                  TextView(
                    text:  "₦ 515,000",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
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
              padding: EdgeInsets.all(5),
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
              child: SvgPicture.asset(AppAssets.ogaBasseyImg)
            ),
          ),
        ],
      ),
    );
  }
}
