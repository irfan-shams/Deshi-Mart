import 'package:deshi_mart/config/app_colors.dart';
import 'package:deshi_mart/controllers/signup_controller.dart';
import 'package:deshi_mart/views/welcome_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController signupControl = Get.put(SignupController());
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          // Top Background Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/top-header.png",
              fit: BoxFit.cover,
              height: 230,
            ),
          ),
          // Bottom Background Image
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/bottom-footer.png", // Change this to your bottom image
              fit: BoxFit.cover,
              height: 300, // Adjust height as needed
            ),
          ),
          Column(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.greyParagraphColor,
                            height: 1.5,
                          ),
                          children: [
                            TextSpan(text: "By continuing you agree to our "),
                            TextSpan(
                              text: "Terms of Service",
                              style: TextStyle(
                                  color: AppColors.greenSecondaryColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WelcomeView()),
                                  );
                                },
                            ),
                            TextSpan(text: " and "),
                            TextSpan(
                              text: "Privacy Policy.",
                              style: TextStyle(
                                  color: AppColors.greenSecondaryColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WelcomeView()),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: AppColors.greenSecondaryColor,
                ),
                width: MediaQuery.of(context).size.width * .9,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    signupControl.onSignUp();
                  },
                  // onPressed: () async {
                  //   await registerUser(context);
                  // },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: AppColors.blackColor,
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
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: AppColors.greenPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
