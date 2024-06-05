import 'package:diamond_store_app/core/assets/assets.gen.dart';
import 'package:diamond_store_app/core/componnets/background_app.dart';
import 'package:diamond_store_app/core/componnets/buttons.dart';
import 'package:diamond_store_app/core/componnets/custom_text_field.dart';
import 'package:diamond_store_app/core/constants/colors.dart';
import 'package:diamond_store_app/core/extensions/spaces_ext.dart';
import 'package:diamond_store_app/core/extensions/widget_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  bool _obsecureText = true;

  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundApp(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              10.height,
              const Text(
                'Fill your details or continue with social media',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              49.height,
              CustomTextField(
                controller: phoneController,
                hintText: 'Phone Number',
                keyboardType: TextInputType.phone,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.icons.phone.path,
                    width: 22,
                    height: 22,
                  ),
                ),
              ),
              17.height,
              CustomTextField(
                controller: passwordController,
                hintText: 'Password',
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obsecureText,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.icons.lockIcon.path,
                    width: 22,
                    height: 22,
                  ),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obsecureText = !_obsecureText;
                    });
                  },
                  icon: _obsecureText
                      ? const Icon(
                          Icons.visibility_off_rounded,
                        )
                      : const Icon(
                          Icons.visibility,
                        ),
                ),
              ),
              10.height,
              Center(
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              30.height,
              Button.filled(onPressed: () {}, label: 'LOG IN'),
              30.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 20.0,
                    height: 1.0,
                    color: AppsColors.white,
                  ),
                  10.width,
                  const Text(
                    'Or Continue with',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  10.width,
                  Container(
                    width: 20.0,
                    height: 1.0,
                    color: AppsColors.white,
                  ),
                ],
              ),
              30.height,
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SvgPicture.asset(Assets.icons.google.path),
                  ),
                ),
              ),
              30.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'New User?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  10.width,
                  InkWell(
                    onTap: (){},
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ).padding(
            const EdgeInsets.only(top: 121, left: 20, right: 20),
          ),
        ),
      ),
    );
  }
}
