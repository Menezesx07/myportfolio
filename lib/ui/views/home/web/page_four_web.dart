import 'package:filledstacks_academy/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../model/certficate_model.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_font_style.dart';
import '../home_viewmodel.dart';

class PageFourWeb extends StatefulWidget {
  const PageFourWeb({Key? key}) : super(key: key);

  @override
  State<PageFourWeb> createState() => _PageFourWebState();
}

class _PageFourWebState extends State<PageFourWeb> {

  List<CertificateModel> certificates = [];

  _getCertificate() {
    certificates = CertificateModel.getCertificate();
  }

  @override
  Widget build(BuildContext context) {
    _getCertificate();

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
                        margin: const EdgeInsets.symmetric( horizontal: 36),
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text("Educational", style: ktsBodyExtraLightItalic.copyWith(fontSize: screenWidth(context) * 0.05, color: kcPrimaryColor)),
                                const SizedBox(width: 16),
                                Text("Background", style: ktsBodyBoldItalic.copyWith(fontSize: screenWidth(context) * 0.05, ))
                              ],
                            ),

                            const SizedBox(height: 30),

                            Image.asset("assets/page4/education.png", height: screenHeight(context) * 0.6)

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
                              image: AssetImage("assets/page4/phone.png"),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: screenHeight(context) * 0.2, top: screenHeight(context) * 0.2),
                            child: ListView.builder(
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) {

                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                      child: SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.8,
                                        child: Center(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                certificates[index].url,
                                                height: screenHeight(context)* 0.1,
                                                fit: BoxFit.cover,
                                              ),
                                              const SizedBox(width: 16),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(certificates[index].name, style: ktsBodyBold.copyWith(color: kcDarkGreyColor, fontSize: screenWidth(context)* 0.01)),
                                                    Text(certificates[index].desc, style: ktsBodyRegular.copyWith(color: kcDarkGreyColor, fontSize: screenWidth(context)* 0.01)),
                                                    Text(certificates[index].date, style: ktsBodyRegular.copyWith(color: kcDarkGreyColor, fontSize: screenWidth(context)* 0.01)),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(right: screenWidth(context)* 0.09),
                                                child: InkWell(
                                                    onTap: () => _launchExternalPage(),
                                                    child: const Icon(Icons.arrow_forward_ios)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),

                                    //divider
                                    Container(
                                      color: Colors.grey,
                                      height: 1,
                                      width: screenWidth(context)* 0.27
                                    ),
                                  ],
                                );


                              },
                            ),
                          ),
                        ),
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

_launchExternalPage() async {
  const url = 'https://www.linkedin.com/in/rafael-henrique-b84b15110/details/certifications/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Não foi possível lançar $url';
  }
}
