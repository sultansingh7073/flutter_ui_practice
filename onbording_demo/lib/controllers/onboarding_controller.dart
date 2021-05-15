import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:onbording_demo/models/onboarding_info.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();
  bool get isLastPage => selectedPageIndex.value == onboardingPage.length - 1;
  forwardAction() {
    if (isLastPage) {
      ///homepage
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnboardimgInfo> onboardingPage = [
    OnboardimgInfo('assets/order.png', 'Order Your Food',
        'Now you can order food any time right from your mobile.'),
    OnboardimgInfo('assets/cook.png', 'Cooking Safe Food',
        'We are maintain safty and We keep clean while making food.'),
    OnboardimgInfo('assets/deliver.png', 'Quick Delivery',
        'Orders your favorite meals will be  immediately deliver.'),
  ];
}
