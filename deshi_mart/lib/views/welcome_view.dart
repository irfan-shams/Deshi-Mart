import 'package:deshi_mart/config/app_colors.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/color-logo.png"),
                  RichText(
                    text: TextSpan(
                      text: 'DESHI ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: AppColors.greenPrimaryColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'MART',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.orangePrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Desh ka market",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyParagraphColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset("assets/images/icon-1.png"),
                        SizedBox(width: 20),
                        Text(
                          "Organic Groceries",
                          style: TextStyle(
                            color: AppColors.greyParagraphColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Divider(
                    thickness: 1,
                    color: AppColors.greyParagraphColor,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image.asset("assets/images/icon-2.png"),
                        SizedBox(width: 20),
                        Text(
                          "Whole foods and vegitable",
                          style: TextStyle(
                            color: AppColors.greyParagraphColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Divider(
                    thickness: 1,
                    color: AppColors.greyParagraphColor,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image.asset("assets/images/icon-3.png"),
                        SizedBox(width: 20),
                        Text(
                          "Fast Delivery",
                          style: TextStyle(
                            color: AppColors.greyParagraphColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Divider(
                    thickness: 1,
                    color: AppColors.greyParagraphColor,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image.asset("assets/images/icon-4.png"),
                        SizedBox(width: 20),
                        Text(
                          "East Refund and return",
                          style: TextStyle(
                            color: AppColors.greyParagraphColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Divider(
                    thickness: 1,
                    color: AppColors.greyParagraphColor,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image.asset("assets/images/icon-5.png"),
                        SizedBox(width: 20),
                        Text(
                          "Secure and safe",
                          style: TextStyle(
                            color: AppColors.greyParagraphColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.greenPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 40,
                ),
                child: Column(
                  children: [
                    Text(
                      "Welcome to our Store",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        "Get your grocery in as fast as one hours",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greenLightColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 50),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 200,
                          vertical: 20,
                        ),
                      ),
                      onPressed: () {},
                      child: Icon(
                        Icons.arrow_forward,
                        size: 32,
                        color: AppColors.greenPrimaryColor,
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
