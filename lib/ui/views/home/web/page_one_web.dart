import 'package:filledstacks_academy/ui/common/app_colors.dart';
import 'package:filledstacks_academy/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import '../../../common/app_font_style.dart';
import '../home_viewmodel.dart';

class PageOneWeb extends StatelessWidget {
  const PageOneWeb({Key? key}) : super(key: key);

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
                    image: AssetImage('assets/background/bg1.png'),
                    fit: BoxFit.cover,
                  ),
                ),

                child: Flex(
                  direction: Axis.horizontal,
                  children: [

                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.all(35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text('<RH/>', style: ktsBodyExtraLightItalic.copyWith(fontSize: screenWidth03(context))),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('MOBILE', style: ktsBodyExtraLightItalic.copyWith(
                                        fontSize: screenWidth(context) * 0.045 ,color: kcPrimaryColor)),

                                    SizedBox(width: screenWidth(context) * 0.04),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 0.0),
                                      child: Image.asset("assets/page1/android.png", width: screenWidth(context) * 0.07),
                                    )
                                  ],
                                ),

                                Text('DEVELOPER', style: ktsBodyBold.copyWith(
                                    fontSize: screenWidth(context) * 0.045))
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.all(35),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset("assets/page1/background_name.png"),
                                  Column(
                                    children: [
                                      Text('Rafael', style: ktsBodyBoldItalic.copyWith(color: kcDarkGreyColor, fontSize: screenWidth(context) * 0.04)),
                                      Text('Henrique', style: ktsBodyBoldItalic.copyWith(color: kcDarkGreyColor, fontSize: screenWidth(context) * 0.04)),
                                    ],
                                  )
                                ],
                              ),

                              SvgPicture.asset("assets/universal/arrowDown.svg", width: screenWidth(context) * 0.045)
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenWidth(context) * 0.2,
                            height: screenHeight(context) * 0.55,
                            decoration: const BoxDecoration(
                              color: kcBackgroundCardColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 32, top: 16),
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Home", style: ktsBodyBold.copyWith(color: kcMediumGrey, fontSize: screenWidth03(context))),
                                      Text("About", style: ktsBodyBold.copyWith(color: kcMediumGrey, fontSize: screenWidth03(context))),
                                      Text("Projects", style: ktsBodyBold.copyWith(color: kcMediumGrey, fontSize: screenWidth03(context))),
                                      Text("Education", style: ktsBodyBold.copyWith(color: kcMediumGrey, fontSize: screenWidth03(context))),
                                      Text("Contact", style: ktsBodyBold.copyWith(color: kcMediumGrey,  fontSize: screenWidth03(context))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SvgPicture.asset("assets/page1/back.svg", width: screenWidth(context) * 0.015),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: screenWidth03(context)),
                                    child: SvgPicture.asset("assets/page1/home.svg", width: screenWidth(context) * 0.018),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: screenWidth03(context)),
                                    child: SvgPicture.asset("assets/page1/multi.svg", width: screenWidth(context) * 0.015),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30)
                            ],
                          ),

                        ],
                      ),
                    ),

                  ],
                )

            )
        );
      },
    );
  }
}
