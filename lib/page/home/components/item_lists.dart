import 'package:idealmart/share/constants/image_file.dart';

class ItemLists {
  static List<String> popularCategories = [
    'Vegetables',
    'Foods',
    'Grains',
    'Fruits',
    'Fast Foods',
    'Vegetables',
    'Foods',
    'Grains',
    'Fruits',
    'Fast Foods',
  ];
  static List popularCategoriesImages = [
    TImages.vegetables,
    TImages.food,
    TImages.grain,
    TImages.fruit,
    TImages.breakfast,
    TImages.vegetables,
    TImages.food,
    TImages.grain,
    TImages.fruit,
    TImages.breakfast,
  ];

  static List<Map<String, dynamic>> productList = [
    {'name': 'Fresh Organic Tomato', 'image': TImages.vegetables, "discount": 23, 'old_price': 40, 'new_price': 34, 'detail': 'Tomatoes are a good source of vitamins, minerals, fiber, and antioxidants. They contain lycopene, an antioxidant that may help prevent cancer. Tomatoes also contain potassium, iron, folate, and vitamin C'},
    {'name': 'Fresh Organic Fast Food', 'image': TImages.food, "discount": 24, 'old_price': 60, 'new_price': 50, 'detail': 'Fast food is a type of food that is mass-produced and designed to be prepared and served quickly. It\'s often associated with chain restaurants that offer drive-through and take-out services. Fast food is popular because it\'s inexpensive, convenient, and tastes good. However, many fast foods are high in calories, salt, sugar, and saturated fat.'},
    {'name': 'Fresh Grain (Best Quality)', 'image': TImages.grain, "discount": 30, 'old_price': 60, 'new_price': 40, 'detail': 'Grains are the seeds of grass-like plants called cereals, and they are a staple food in many countries. Some common grains include corn, rice, wheat, barley, oats, millet, sorghum, and rye'},
    {'name': 'Fresh Fruit (No Chemical)', 'image': TImages.fruit, "discount": 20, 'old_price': 80, 'new_price': 70, 'detail': 'Some common types of fresh fruit include apples, pears, oranges, grapefruits, mandarins, limes, nectarines, apricots, peaches, plums, bananas, mangoes, strawberries, raspberries, blueberries, kiwifruit, passionfruit, watermelons, rockmelons, honeydew melons, tomatoes, and avocados'},
    {'name': 'Fresh And Hot Food', 'image': TImages.breakfast, "discount": 50, 'old_price': 100, 'new_price': 50, 'detail': 'Fresh food is food that has not been preserved and has not spoiled yet. It can be described as having a light and crisp taste'},
  ];
}