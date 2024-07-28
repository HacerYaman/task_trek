import 'package:flutter/material.dart';
import 'package:task_trek/constants/colors.dart';
import 'package:task_trek/constants/dimens.dart';
import 'package:task_trek/constants/strings.dart';
import 'package:task_trek/presentation/widgets/custom_button_widget.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/social_block_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(TaskTrekDimens.paddingMedium),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Text(
                TaskTrekStrings.appName,
                style: appNameTextStyle(),
              ),
              const Text(
                "Task Management App",
              ),
              const SizedBox(
                height: TaskTrekDimens.sbXLarge,
              ),
              Text(
                "Login to your account",
                style: loginToTextStyle(),
              ),
              const SizedBox(
                height: TaskTrekDimens.sbMedium,
              ),
              const CustomTextField(
                hintText: 'Email',
                icon: Icon(Icons.email),
              ),
              const SizedBox(
                height: TaskTrekDimens.sbMedium,
              ),
              const CustomTextField(
                hintText: 'Passwords',
                icon: Icon(Icons.lock),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                        color: TasktrekColors.primaryColor,
                        fontSize: TaskTrekDimens.fontSizeSmall),
                  )),
              const SizedBox(
                height: TaskTrekDimens.sbMedium,
              ),
              CustomButton(onPressed: () {}, buttonText: "Login"),
              const SizedBox(
                height: TaskTrekDimens.sbMedium,
              ),
               Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: TaskTrekDimens.paddingLarge),
                child: buildTextRow("or login with"),
              ),
              const SocialBlockWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: TaskTrekDimens.paddingLarge),
                child: buildTextRow("Don't have an account?"),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: TasktrekColors.primaryColor,
                        fontSize: TaskTrekDimens.fontSizeSmall),
                  )),

            ],
          ),
        ),
      ),
    );
  }

  Row buildTextRow(String text) {

    return  Row(
                children: [
                  const Expanded(
                      child: Divider(
                    color: TasktrekColors.primaryColor,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: TaskTrekDimens.paddingSmall),
                    child: Text(text),
                  ),
                  const Expanded(
                      child: Divider(
                    color: TasktrekColors.primaryColor,
                  ))
                ],
              );
  }

  TextStyle loginToTextStyle() =>
      const TextStyle(color: Colors.black, fontWeight: FontWeight.bold);

  TextStyle appNameTextStyle() => const TextStyle(
      color: TasktrekColors.primaryColor,
      fontSize: TaskTrekDimens.fontSizeXLarge,
      fontWeight: FontWeight.bold);
}



