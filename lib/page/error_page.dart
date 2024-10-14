import 'package:flutter/material.dart';
import 'package:idealmart/share/constants/image_file.dart';
import '../share/constants/sizes.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('!Deal Mart'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Center(
            child: Column(
              children: [
                const Center(
                  child: Image(
                    image: AssetImage(TImages.pageNotFound),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Text('Sorry, an error encountered!', style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.black), textAlign: TextAlign.center,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Text('Error: 404\n\n Page doesn\'t exist!', style: Theme.of(context).textTheme.titleMedium!.apply(color: Colors.red), textAlign: TextAlign.center,),
                const SizedBox(height: TSizes.spaceBtwItems,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
