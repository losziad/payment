import 'package:flutter/material.dart';
import 'package:payment/core/app_styles.dart';

class TotalPriceItem extends StatelessWidget {

  final String categorie;
  final String price;

  const TotalPriceItem({super.key, required this.categorie, required this.price});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categorie,
            textAlign: TextAlign.center,
            style: AppStyle.kItemTotalStyle,
          ),
          Text(
            price,
            textAlign: TextAlign.center,
            style: AppStyle.kItemTotalStyle,
          ),
        ],
      ),
    );
  }
}
