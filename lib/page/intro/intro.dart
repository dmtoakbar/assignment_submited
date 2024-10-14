import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:idealmart/page/intro/widgets/page_view_component.dart';
import 'package:idealmart/route/routes.dart';
import 'package:idealmart/share/constants/sizes.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  Timer? _timer;
  int  index = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      _triggerFunction();
    });
  }

  void _triggerFunction() {
    setState(() {
      if(index==0){
        index=1;
      }else if(index==1){
        index=2;
      } else {
        index=0;
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoScroll.autoScroll[index],
            const SizedBox(height: 40,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: (){
                    TGoRoute.launch(context, '/registration-page');
                  },
                  child: const Text('Signup')
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                  onPressed: () {
                    TGoRoute.launch(context, '/login');
                  },
                  child: const Text('Login', style: TextStyle(color: Colors.blueAccent),)
              ),
            ),
            const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
