import 'package:flutter/material.dart';
import 'package:idealmart/route/routes.dart';
import 'package:idealmart/share/constants/colors.dart';
import 'package:idealmart/share/constants/image_file.dart';
import 'package:idealmart/share/constants/sizes.dart';
import 'package:idealmart/share/snackbar/custom_snackbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool passwordHid = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(TImages.loginPageBackground), // Ensure you have this image in your assets
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Scrollable Content
          SingleChildScrollView(
            child: Container(
              color: Colors.black.withOpacity(0.7),
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height, maxHeight: 800),
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.shopping_bag, color: Colors.blueAccent, size: 40.0,),
                      Text('!Deal Mart', style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.w600),)
                    ],
                  ),
                  const Spacer(),
                  Text(
                    'Shop Smart, Save Big on Groceries!',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections/2,),
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 2,
                                        color: TColors.grey,
                                      ),
                                    ),
                                    const Text(' Login to your account ', style: TextStyle(color: TColors.darkGrey),),
                                    Expanded(
                                      child: Container(
                                        height: 2,
                                        color: TColors.grey,
                                      ),
                                    ),
                                  ],
                              ),
                              const SizedBox(height: TSizes.spaceBtwItems,),
                              Form(
                                key: formKey,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        controller: email,
                                        keyboardType: TextInputType.emailAddress,
                                        decoration: const InputDecoration(
                                          hintText: 'Email',
                                          prefixIcon: Icon(Icons.email)
                                        ),
                                        validator: (String? value) {
                                          if (value!.isEmpty) {
                                            return 'Please Enter Your Email';
                                          }
                                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                              .hasMatch(value)) {
                                            return 'Enter a valid Email';
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(height: TSizes.spaceBtwItems,),
                                      TextFormField(
                                        controller: password,
                                        keyboardType: TextInputType.text,
                                        obscureText: passwordHid?true:false,
                                        decoration: InputDecoration(
                                          hintText: 'Password',
                                          prefixIcon: const Icon(Icons.lock),
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                passwordHid = !passwordHid;
                                              });
                                            },
                                            child: passwordHid?const Icon(Icons.visibility_off):const Icon(Icons.visibility),
                                          ),
                                        ),
                                        validator: (String? value) {
                                          if (value!.length < 6) {
                                            return 'Please enter at least 6 characters.';
                                          }
                                          return null;
                                        },
                                      )
                                    ],
                                  )
                              ),
                              const SizedBox(height: TSizes.spaceBtwItems*2,),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                    onPressed: (){
                                      if(formKey.currentState!.validate() == true) {
                                        CustomSnackbar.successSnackbar(message: 'You logged in successfully');
                                        TGoRoute.launch(context, '/home');
                                      } else {
                                        CustomSnackbar.errorSnackbar(message: "Please enter valid credentials to login.");
                                      }
                                    },
                                    child: const Text('Login')
                                ),
                              ),
                              const SizedBox(height: TSizes.spaceBtwItems/2,),
                              GestureDetector(
                                 onTap: () {
                                   TGoRoute.launch(context, '/forget-password');
                                 },
                                  child: const Text('Forget Password?')
                              ),
                              const SizedBox(height: TSizes.spaceBtwItems/2,),
                            ],
                          ),

                        ),
                      ),
                    ),
                   const SizedBox(height: TSizes.spaceBtwItems/2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?', style: TextStyle(color: Colors.white),),
                      const SizedBox(width: 15,),
                      GestureDetector(
                        onTap: () {
                          TGoRoute.launch(context, '/registration-page');
                        },
                        child: const Text('Register', style: TextStyle(color: Colors.white),),
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
