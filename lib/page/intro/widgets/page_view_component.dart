import 'package:flutter/material.dart';
import 'package:idealmart/page/intro/widgets/pointer_indicator.dart';
import 'package:idealmart/share/constants/image_file.dart';
import 'package:idealmart/share/constants/texts.dart';
import '../../../share/constants/colors.dart';
import '../../../share/constants/sizes.dart';


class AutoScroll {
  static List<Column> autoScroll = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 60,),
        Container(
          padding: const EdgeInsets.all(10),
          width: 250,
          height: 250,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 1,
                  color: Colors.black
              )
          ),
          child: Container(
            width: 240,
            height: 240,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(TImages.introFirst),
                    fit: BoxFit.cover
                )
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntroPointerIndicator.pointer(color: Colors.blueAccent, width: 24.0, height: 10, radius: 8),
            const SizedBox(width: 8,),
            IntroPointerIndicator.pointer(color: TColors.grey, width: 10.0, height: 10, radius: 8),
            const SizedBox(width: 8,),
            IntroPointerIndicator.pointer(color: TColors.grey, width: 10.0, height: 10, radius: 8),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
        Text(TTexts.introHeadlineOne, style: const TextStyle().copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black
        ),),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Text(
          TTexts.introBodyOne,
          style: const TextStyle().copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black
          ),
          textAlign: TextAlign.center,
        )
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 60,),
        Container(
          padding: const EdgeInsets.all(10),
          width: 250,
          height: 250,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 1,
                  color: Colors.black
              )
          ),
          child: Container(
            width: 240,
            height: 240,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(TImages.introSecond),
                    fit: BoxFit.cover
                )
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntroPointerIndicator.pointer(color: TColors.grey, width: 10.0, height: 10, radius: 8),
            const SizedBox(width: 8,),
            IntroPointerIndicator.pointer(color: Colors.blueAccent, width: 24.0, height: 10, radius: 8),
            const SizedBox(width: 8,),
            IntroPointerIndicator.pointer(color: TColors.grey, width: 10.0, height: 10, radius: 8),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
        Text(TTexts.introHeadlineSecond, style: const TextStyle().copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black
        ),),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Text(
          TTexts.introBodySecond,
          style: const TextStyle().copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black
          ),
          textAlign: TextAlign.center,
        )
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 60,),
        Container(
          padding: const EdgeInsets.all(10),
          width: 250,
          height: 250,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 1,
                  color: Colors.black
              )
          ),
          child: Container(
            width: 240,
            height: 240,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(TImages.introThird),
                    fit: BoxFit.cover
                )
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntroPointerIndicator.pointer(color: TColors.grey, width: 10.0, height: 10, radius: 8),
            const SizedBox(width: 8,),
            IntroPointerIndicator.pointer(color: TColors.grey, width: 10.0, height: 10, radius: 8),
            const SizedBox(width: 8,),
            IntroPointerIndicator.pointer(color: Colors.blueAccent, width: 24.0, height: 10, radius: 8),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
        Text(TTexts.introHeadlineThird, style: const TextStyle().copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black
        ),),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Text(
          TTexts.introBodyThird,
          style: const TextStyle().copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black
          ),
          textAlign: TextAlign.center,
        )
      ],
    ),
  ];
}
