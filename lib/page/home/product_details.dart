import 'package:flutter/material.dart';
import 'package:idealmart/page/home/components/item_lists.dart';
import 'package:readmore/readmore.dart';
import '../../share/constants/colors.dart';
import '../../share/constants/sizes.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({super.key, required this.index});
  int index;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int productNo = 1;
  @override
  Widget build(BuildContext context) {
    int index = widget.index;
    return Scaffold(
      bottomNavigationBar: Container(
        padding:
            const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace / 2),
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: const BoxDecoration(
            color: TColors.grey,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (productNo > 1) {
                      setState(() {
                        productNo = productNo - 1;
                      });
                    }
                  },
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 44,
                  child: Text(
                    '$productNo',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      productNo = productNo + 1;
                    });
                  },
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: const BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 44,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      side: const BorderSide(color: Colors.black),
                      padding: const EdgeInsets.all(12)),
                  child: const Text('Add to cart')),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Product details',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: TSizes.defaultSpace - 8),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 24,
                height: 230,
                alignment: Alignment.topCenter,
                child: Image(
                  image: AssetImage(ItemLists.productList[index]['image']),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.stars,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '5.0',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '(199)',
                      ),
                    ],
                  ),
                  Icon(Icons.share)
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text('${ItemLists.productList[index]['discount']}\%'),
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Text(
                    '\$${ItemLists.productList[index]['old_price']}',
                    style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontSize: 19),
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Text(
                    '\$${ItemLists.productList[index]['new_price']}',
                    style: const TextStyle(
                        fontSize: 19, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              ReadMoreText(
                '${ItemLists.productList[index]['name']}',
                trimMode: TrimMode.Line,
                trimLines: 1,
                colorClickableText: Colors.pink,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                moreStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Status   ',
                    style: TextStyle(fontWeight: FontWeight.w600)),
                TextSpan(
                  text: 'in stock',
                )
              ])),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              ReadMoreText(
                'Details: ${ItemLists.productList[index]['detail']}',
                trimMode: TrimMode.Line,
                trimLines: 2,
                colorClickableText: Colors.pink,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue),
                lessStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.red),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Center(
                child: SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Checkout')),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reviews (199)',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  GestureDetector(
                      onTap: () {

                      },
                      child: const Icon(
                        Icons.more_vert_outlined,
                        size: 22,
                      ))
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
