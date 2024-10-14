import 'package:flutter/material.dart';
import 'package:idealmart/page/home/components/grid_view_products.dart';
import 'package:idealmart/page/home/components/top_head.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopHeadHome(),
            SizedBox(height: 10,),
             Padding(
               padding: EdgeInsets.all(24),
               child: GridViewProducts()
               ),
          ],
        ),
      ),
    );
  }
}
