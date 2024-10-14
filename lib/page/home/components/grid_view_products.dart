import 'package:flutter/material.dart';
import 'package:idealmart/page/home/components/item_lists.dart';
import 'package:idealmart/page/home/components/widgets/vertical_card.dart';
import '../../../share/constants/sizes.dart';

class GridViewProducts extends StatelessWidget {
  const GridViewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: ItemLists.productList.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: TSizes.gridViewSpacing,
            crossAxisSpacing: TSizes.gridViewSpacing,
            mainAxisExtent: 202.6
        ),
        itemBuilder: (_, index) {
            return VerticalProductCard(index: index);
        });
  }
}
