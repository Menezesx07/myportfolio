import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_font_style.dart';
import '../../../common/ui_helpers.dart';
import '../home_viewmodel.dart';

class PageFiveWeb extends StatefulWidget {
  const PageFiveWeb({Key? key}) : super(key: key);

  @override
  State<PageFiveWeb> createState() => _PageFourWebState();
}

class _PageFourWebState extends State<PageFiveWeb> {

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
                  flex: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight(context) * 0.2, left: screenWidth(context) * 0.05),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Row(
                            children: [
                              Text(
                                "Contact",
                                style: ktsBodyBoldItalic.copyWith(
                                  fontSize: screenWidth06(context),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Text(
                                "Me",
                                style: ktsBodyBoldItalic.copyWith(
                                  fontSize: screenWidth06(context),
                                  color: kcPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            "assets/page5/android.png",
                            width: screenWidth(context) * 0.3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: screenWidth(context) * 0.25,
                        decoration: const BoxDecoration(
                          color: kcMediumGrey,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () => _launchExternalPage("https://www.linkedin.com/in/rafael-henrique-b84b15110/"),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/page5/linkedin.png",
                                      height: screenHeight(context)* 0.1,
                                    ),
                                    const SizedBox(width: 10),
                                    Text("Linkedin", style: ktsBodyRegular.copyWith(fontSize: screenWidth02(context)))
                                  ],
                                ),
                              ),

                              const SizedBox(height: 30),

                              InkWell(
                                onTap: () => _launchExternalPage("https://github.com/Menezesx07/Menezes07"),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/page5/github.png",
                                      height: screenHeight(context)* 0.1,
                                    ),
                                    const SizedBox(width: 10),
                                    Text("GitHub", style: ktsBodyRegular.copyWith(fontSize: screenWidth02(context)))
                                  ],
                                ),
                              ),

                              const SizedBox(height: 30),

                              Row(
                                children: [
                                  Image.asset(
                                    "assets/page5/documents.png",
                                    height: screenHeight(context)* 0.1,
                                  ),
                                  const SizedBox(width: 10),
                                  Text("Curriculum", style: ktsBodyRegular.copyWith(fontSize: screenWidth02(context)))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

_launchExternalPage(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Não foi possível lançar $url';
  }
}

