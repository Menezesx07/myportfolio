import 'package:filledstacks_academy/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import '../../../common/app_colors.dart';
import '../../../common/app_font_style.dart';
import '../home_viewmodel.dart';

class PageTwoWeb extends StatelessWidget {
  const PageTwoWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
            body: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background/bg2.png'),
                    fit: BoxFit.cover,
                  ),
                ),

                child: Flex(
                  direction: Axis.horizontal,
                  children: [

                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 52, horizontal: 36),
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("About", style: ktsBodyBoldItalic.copyWith(fontSize: screenWidth(context) * 0.05)),
                                const SizedBox(width: 16),
                                Text("Me", style: ktsBodyBoldItalic.copyWith(fontSize: screenWidth(context) * 0.05, color: kcPrimaryColor))
                              ],
                            ),

                            const SizedBox(height: 30),

                            SizedBox(
                              height: 350,
                              width: 500,
                              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                style: ktsBodyRegular.copyWith(fontSize: 22),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 36),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(height: 10),
                            SvgPicture.asset("assets/universal/arrowDown.svg"),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: screenHeight(context) * 0.9,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/page2/phone.png"),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: screenHeight(context)* 0.27,
                                left: screenWidth12(context),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/page2/flutter.png',
                                      height: screenHeight18(context)
                                    ),
                                    const SizedBox(height: 30),
                                    Text("Flutter", style: ktsBodyBoldItalic.copyWith(color: kcDarkGreyColor, fontSize: screenWidth(context)* 0.015))
                                  ],
                                ),
                              ),
                              Positioned(
                                top: screenHeight(context)* 0.3,
                                right: screenWidth(context)* 0.1,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16.0),
                                      child: Image.asset(
                                        'assets/page2/kotlin.png',
                                        height: screenHeight(context)* 0.15,
                                      ),
                                    ),
                                    const SizedBox(height: 28),
                                    Text("Kotlin", style: ktsBodyBoldItalic.copyWith(color: kcDarkGreyColor, fontSize: screenWidth(context)* 0.015))
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: screenHeight(context)* 0.04,
                                left: screenWidth12(context),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/page2/Firebase.png',
                                      height: screenHeight18(context)
                                    ),
                                    const SizedBox(height: 30),
                                    Text("Firebase", style: ktsBodyBoldItalic.copyWith(color: kcDarkGreyColor, fontSize: screenWidth(context)* 0.015))
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: screenHeight(context)* 0.05,
                                right: screenWidth(context)* 0.11,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/page2/react.png',
                                      height: screenHeight18(context)
                                    ),
                                    const SizedBox(height: 30),
                                    Text("React Native", style: ktsBodyBoldItalic.copyWith(color: kcDarkGreyColor, fontSize: screenWidth(context)* 0.015))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ),


                  ],
                )

            )
        );
      },
    );
  }
}
