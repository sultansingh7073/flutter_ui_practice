import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onbording_demo/controllers/onboarding_controller.dart';

class OnboardingPage extends StatelessWidget {
  final _controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.onboardingPage.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(_controller.onboardingPage[index].image),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          _controller.onboardingPage[index].title,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Text(
                              _controller.onboardingPage[index].description,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              )),
                        ),
                      ],
                    ),
                  );
                }),
            Positioned(
                bottom: 30,
                left: 20,
                child: Row(
                  children: List.generate(
                      _controller.onboardingPage.length,
                      (index) => Obx(() {
                            return _controller.selectedPageIndex.value == index
                                ? AnimatedContainer(
                                    duration: Duration(milliseconds: 10),
                                    margin: EdgeInsets.all(4),
                                    height: 8,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  )
                                : Container(
                                    margin: EdgeInsets.all(4),
                                    height: 8,
                                    width: 8,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                  );
                          })),
                )),
            Positioned(
              right: 20,
              bottom: 20,
              child: FloatingActionButton(
                  onPressed: _controller.forwardAction,
                  elevation: 0,
                  child: Obx(() {
                    return Text(_controller.isLastPage ? "Start" : "Next");
                  })),
            )
          ],
        ),
      ),
    );
  }
}
