import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_library/login_page_folder/widgets/my_button.dart';
import 'package:music_library/login_page_folder/widgets/my_text_field.dart';
import 'package:music_library/widgets/my_color_list.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          color: colorBackground,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 40.0), 
              const Text(
                'English (UK) ∨',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 185, 193, 201),
                ),
              ),
              const SizedBox(height: 20), 
              Center(
                child: Image.network(
                  "https://img.icons8.com/m_outlined/512/FFFFFF/apple-music.png",
                  width: 270,
                  height: 270,
                ),
              ),
              const SizedBox(height: 30.0), 
              MyTextField(
                labelText: 'Mobile number or email address',
                isObsecure: false,
                textStyle: const TextStyle(color: colorWhite),
                fillColor: colorTransparent,
                filled: true,
                enabledBorderColor: enabledBorderColor,
                focusedBorderColor: focusedBorderColor,
                borderRadius: 10,
              ),
              const SizedBox(height: 12),
              MyTextField(
                labelText: 'Password',
                isObsecure: true,
                textStyle: const TextStyle(color: colorWhite),
                fillColor: colorTransparent,
                filled: true,
                enabledBorderColor: enabledBorderColor,
                focusedBorderColor: focusedBorderColor,
                borderRadius: 10,
              ),
              const SizedBox(height: 12),
              MyButton(
                borderColor: colorWhite,
                borderWidth: 2, 
                height: 45,
                textButton: 'Log in',
                textColor: colorWhite,
                backgroundColor: colorTransparent, 
                borderRadius: 40,
                elevation: 0,
                onPressed: () {
                  Get.toNamed('/homepage');
                },
              ),
              const SizedBox(height: 16),
              const Text(
                'Forgotten Password?',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
