import 'package:filledstacks_academy/ui/common/app_colors.dart';
import 'package:filledstacks_academy/ui/common/ui_helpers.dart';
import 'package:filledstacks_academy/ui/views/home/web/page_five_web.dart';
import 'package:filledstacks_academy/ui/views/home/web/page_four_web.dart';
import 'package:filledstacks_academy/ui/views/home/web/page_one_web.dart';
import 'package:filledstacks_academy/ui/views/home/web/page_three_web.dart';
import 'package:filledstacks_academy/ui/views/home/web/page_two_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_font_style.dart';
import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {

    return Scaffold(
      body: PageThreeWeb()
    );
  }
}
