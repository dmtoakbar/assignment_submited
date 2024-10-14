import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:idealmart/page/home/components/item_lists.dart';
import 'package:idealmart/route/names.dart';
import '../../../../share/constants/colors.dart';
import '../../../../share/constants/sizes.dart';

class VerticalProductCard extends StatelessWidget {
  VerticalProductCard({super.key, required this.index });
  int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(TRouteNames.productDetail, extra: index);
      },
      child: Container(
        width: 160,
        decoration: BoxDecoration(
            color: TColors.light,
            borderRadius: BorderRadius.circular(TSizes.md)),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(TSizes.md),
                        topRight: Radius.circular(TSizes.md)),
                    child: Image(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      image: AssetImage(ItemLists.productList[index]['image']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 9,
                    left: 3,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.xs, vertical: TSizes.xs),
                      decoration: BoxDecoration(
                          color: TColors.secondary.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(TSizes.sm)),
                      child: Text(
                        '${ItemLists.productList[index]['discount']}%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Colors.black),
                      ),
                    )),
                Positioned(
                    top: 3,
                    right: 3,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          padding: const EdgeInsets.all(TSizes.xs),
                          decoration: const BoxDecoration(
                              color: TColors.white, shape: BoxShape.circle),
                          child: const Icon(Icons.favorite)),
                    ))
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '${ItemLists.productList[index]['name']}',
                    style: const TextStyle(fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Row(
                    children: [
                      Text('Original', style: TextStyle(fontSize: 11)),
                      SizedBox(
                        width: TSizes.xs / 2,
                      ),
                      Icon(
                        Icons.verified,
                        color: TColors.primary,
                        size: 10,
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6, bottom: 1),
                  child: Text('\$${ItemLists.productList[index]['new_price']}',
                      style: Theme.of(context).textTheme.headlineSmall),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                        color: TColors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.md),
                            bottomRight: Radius.circular(TSizes.md))),
                    child: const Icon(
                      Icons.add,
                      color: TColors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
