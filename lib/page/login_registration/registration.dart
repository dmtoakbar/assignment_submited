import 'package:flutter/material.dart';
import 'package:idealmart/page/login_registration/widgets/form_field_label.dart';
import 'package:idealmart/share/constants/sizes.dart';
import 'package:idealmart/share/snackbar/custom_snackbar.dart';
import '../../route/routes.dart';
import '../../share/constants/colors.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController retypePassword = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController referralCode = TextEditingController();
  bool passwordHide = true;
  bool retypePasswordHide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.shopping_bag, color: Colors.blueAccent, size: 30.0,),
                Text('!Deal Mart', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.black, fontWeight: FontWeight.w500),)
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),
            Text('Welcome to !Deal Mart', style: Theme.of(context).textTheme.headlineSmall,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 2,
                    color: TColors.grey,
                  ),
                ),
                const Text(' Create an account ', style: TextStyle(color: TColors.darkGrey),),
                Expanded(
                  child: Container(
                    height: 2,
                    color: TColors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),
            Form(
              key: formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    FormFieldLabel.label(label: 'Email'),
                    TextFormField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          ),
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
                    const SizedBox(height: TSizes.spaceBtwSections/2,),
                    FormFieldLabel.label(label: 'Name'),
                    TextFormField(
                      controller: name,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        hintText: 'Enter full name',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          ),
                        prefixIcon: Icon(Icons.account_circle)
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please enter your full name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections/2,),
                    FormFieldLabel.label(label: 'Mobile No.'),
                    TextFormField(
                      controller: phone,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintText: '123-457-9805',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          ),
                          prefixIcon: Icon(Icons.phone)
                      ),
                      validator: (String? value) {
                        if (value!.length < 10) {
                          return 'Please enter your mobile number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections/2,),
                    FormFieldLabel.label(label: 'Password'),
                    TextFormField(
                      controller: password,
                      obscureText: passwordHide?passwordHide:false,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                              color: Colors.grey
                          ),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  passwordHide = !passwordHide;
                                });
                              },
                             child: passwordHide?const Icon(Icons.visibility_off):const Icon(Icons.visibility),
                          )
                      ),
                      validator: (String? value) {
                        if (value!.length < 6) {
                          return 'Please enter at least 6 characters.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections/2,),
                    FormFieldLabel.label(label: 'Retype Password'),
                    TextFormField(
                      controller: retypePassword,
                      keyboardType: TextInputType.text,
                      obscureText: retypePasswordHide?retypePasswordHide:false,
                      decoration: InputDecoration(
                          hintText: 'Retype Password',
                          hintStyle: const TextStyle(
                              color: Colors.grey
                          ),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                retypePasswordHide = !retypePasswordHide;
                              });
                            },
                            child: retypePasswordHide?const Icon(Icons.visibility_off):const Icon(Icons.visibility),
                          )
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please re-enter password';
                        }

                        if (password.text != retypePassword.text) {
                          return "Password does not match";
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections/2,),
                    FormFieldLabel.label(label: 'Address'),
                    TextFormField(
                      controller: address,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          hintText: 'MVC8 0C2, Delhi',
                          hintStyle: TextStyle(
                            color: Colors.grey
                          ),
                          prefixIcon: Icon(Icons.location_on),
                      ),
                      validator: (String? value) {
                        if(value!.isEmpty) {
                          return 'Please enter your address';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections/2,),
                    TextFormField(
                      controller: referralCode,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        hintText: 'Referral Code (Optional)',
                        hintStyle: TextStyle(
                            color: Colors.grey
                        ),
                        prefixIcon: Icon(Icons.code),
                      ),
                      validator: (String? value) {
                        return null;
                      },
                    )
                  ],
                )
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: (){
                    if(formKey.currentState!.validate() == true) {
                      CustomSnackbar.successSnackbar(message: "Congrats!. you successfully registered. Login Now");
                      TGoRoute.replace(context, '/login');
                    } else {
                      CustomSnackbar.errorSnackbar(message: "Please enter valid credentials");
                    }
                  },
                  child: const Text('Signup')
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections/2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account? ', style: TextStyle(color: Colors.grey, fontSize: 13),),
                GestureDetector(
                  onTap: () {
                    TGoRoute.launch(context, '/login');
                  },
                  child: const Text('Login',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blueAccent
                      )
                  ),
                )
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections/2),
            const Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'By continuing, you agree to our ',
                      style: TextStyle(fontSize: 13, color: Colors.grey)
                    ),
                    TextSpan(
                        text: 'Terms of Service and Privacy Policy',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        decorationColor: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                        fontSize: 13
                      )
                    )
                  ]
                )
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
