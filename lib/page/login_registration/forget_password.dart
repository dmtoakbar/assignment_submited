import 'package:flutter/material.dart';
import 'package:idealmart/share/constants/image_file.dart';
import 'package:idealmart/share/constants/sizes.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  TextEditingController email = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: TSizes.spaceBtwSections,),
            SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: const Image(
                    image: AssetImage(TImages.verifyEmail),
                    fit: BoxFit.cover,
                )
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),
            const Text('Enter your email to reset your password', style: TextStyle(fontWeight: FontWeight.w600),),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
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
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit')
              ),
            )
          ],
        ),
      ),
    );
  }
}

