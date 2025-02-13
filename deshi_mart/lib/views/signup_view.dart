import 'package:deshi_mart/config/app_colors.dart';
import 'package:deshi_mart/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController signupControl = Get.put(SignupController());
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
          SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/carrot.png"),
            ],
          ),
          SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Row(
              children: [
                Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                    color: AppColors.greyParagraphColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextField(
              controller: signupControl.nameController,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.greyParagraphColor,
              ),
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextField(
              controller: signupControl.emailController,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.greyParagraphColor,
              ),
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextField(
              obscureText: true,
              controller: signupControl.passController,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.greyParagraphColor,
              ),
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              children: [
                Text("By continuing you agree to our"),
                TextButton(
                  onPressed: () {},
                  child: Text("Terms of Service"),
                ),
                Text("and"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                text: 'By continuing you agree to our ',
                children: <TextSpan>[
                  TextSpan(
                    text: 'Service ',
                    style: TextStyle(
                      color: AppColors.orangePrimaryColor,
                    ),
                  ),
                  TextSpan(
                    text: 'and ',
                  ),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                      color: AppColors.greenPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.red,
            ),
            width: MediaQuery.of(context).size.width * .9,
            height: 45,
            child: TextButton(
              onPressed: () {
                signupControl.onSignUp();
              },
              // onPressed: () async {
              //   await registerUser(context);
              // },
              child: const Text(
                "SIGN UP",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account.",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => LoginView(),
                    //   ),
                    // );
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
