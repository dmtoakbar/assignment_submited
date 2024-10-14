import 'package:flutter/material.dart';
import 'package:idealmart/page/home/components/item_lists.dart';
import 'package:idealmart/page/home/components/widgets/curved_edge.dart';
import 'package:idealmart/share/constants/image_file.dart';

import '../../../share/constants/colors.dart';
import '../../../share/constants/sizes.dart';

class TopHeadHome extends StatelessWidget {
  const TopHeadHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdge(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 350,
        color: Colors.blueAccent,
        padding: const EdgeInsets.all(TSizes.defaultSpace / 2),
        child: Column(
          children: [
            // app bar
            SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.shopping_bag,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            Text(
                              '!Deal Mart',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Text(
                          'Amit kumar',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .apply(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            const Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                            Container(
                              width: 16,
                              height: 16,
                              transform: Matrix4.translationValues(-8, -8, 0),
                              decoration: const BoxDecoration(
                                  color: TColors.grey, shape: BoxShape.circle),
                              child: const Text(
                                '4',
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                                softWrap: true,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: TSizes.spaceBtwItems / 2,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            Container(
                              width: 16,
                              height: 16,
                              transform: Matrix4.translationValues(-4, -8, 0),
                              decoration: const BoxDecoration(
                                  color: TColors.grey, shape: BoxShape.circle),
                              child: const Text(
                                '4',
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                                softWrap: true,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
// end app bar
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
// search
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              child: TextField(
                style: const TextStyle(color: Colors.grey),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    hintText: "Search . . .",
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.send),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
// end search
// category
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Popular Categories',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: Colors.white),
                  textAlign: TextAlign.start,
                )),

            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: ItemLists.popularCategories.length,
                    separatorBuilder: (_, __) => const SizedBox(
                          width: TSizes.spaceBtwItems,
                        ),
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(ItemLists.popularCategoriesImages[index]),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(
                                width: 60,
                                child: Text(
                                  ItemLists.popularCategories[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .apply(color: Colors.white),
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                ))
                          ],
                        ),
                      );
                    }),
              ),
            )
// end category
          ],
        ),
      ),
    );
  }
}
