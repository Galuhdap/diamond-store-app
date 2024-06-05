import 'package:diamond_store_app/core/assets/assets.gen.dart';
import 'package:diamond_store_app/core/componnets/background_app.dart';
import 'package:diamond_store_app/core/componnets/buttons.dart';
import 'package:diamond_store_app/core/componnets/custom_text_field.dart';
import 'package:diamond_store_app/core/extensions/spaces_ext.dart';
import 'package:diamond_store_app/core/extensions/widget_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  bool _obsecureText = true;

  final userNameController = TextEditingController();
  final emailController = TextEditingController();
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
                'Register Account',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              45.height,
              CustomTextField(
                controller: userNameController,
                hintText: 'User Name',
                keyboardType: TextInputType.name,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.icons.user.path,
                    width: 22,
                    height: 22,
                  ),
                ),
              ),
              17.height,
              CustomTextField(
                controller: emailController,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.icons.mail.path,
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
              17.height,
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
              30.height,
              Button.filled(onPressed: () {}, label: 'SIGN UP'),
              30.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already Have Account?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  10.width,
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Log In',
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
