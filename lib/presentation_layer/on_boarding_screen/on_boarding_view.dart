import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tutac_app/presentation_layer/resources_mg/assets_manager.dart';
import 'package:tutac_app/presentation_layer/resources_mg/color_manager.dart';
import 'package:tutac_app/presentation_layer/resources_mg/strings_manager.dart';
import 'package:tutac_app/presentation_layer/resources_mg/values_manager.dart';

import '../../data_layer/models/boarding_model.dart';
import '../resources_mg/app_constants.dart';
import '../resources_mg/routes_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  bool boardingValue = false;
  int _currentPageIndex = 0;
  final PageController _pageController = PageController();

  //Boarding model list
  late final List<BoardingModel> _list = _getSliderData();

//separate data of ui
  List<BoardingModel> _getSliderData() => [
        BoardingModel(
          AppStrings.onBoardT1,
          AppStrings.onBoardSubT1,
          ImageAssets.onBoarding1,
        ),
        BoardingModel(
          AppStrings.onBoardT2,
          AppStrings.onBoardSubT2,
          ImageAssets.onBoarding2,
        ),
        BoardingModel(
          AppStrings.onBoardT3,
          AppStrings.onBoardSubT3,
          ImageAssets.onBoarding3,
        ),
        BoardingModel(
          AppStrings.onBoardT4,
          AppStrings.onBoardSubT4,
          ImageAssets.onBoarding4,
        ),
      ];

  //skip function
  void skipFunc() {
    //boardingValue = true;
    //save to cache helper
    Navigator.pushReplacementNamed(context, Routes.loginRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: AppSize.s0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return OnBoardingWidget(_list[index]);
        },
      ),
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: _currentPageIndex < _list.length - 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: skipFunc,
                child: const Text(
                  AppStrings.skip,
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ),
          Visibility(
            visible: (_currentPageIndex < _list.length - 1),
            child: const SizedBox(
              height: AppSize.s13,
            ),
          ),
          _getBottomSheetWidget(),
        ],
      ),
    );
  }

//Row with arrows widget
  Widget _getBottomSheetWidget() {
    return Container(
      color: ColorManager.primary,
      child: Row(
        // To make equal distance between each child
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //left arrow
          Visibility(
            visible: (_currentPageIndex > 0 &&
                _currentPageIndex <= (_list.length - 1)),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p15, vertical: AppPadding.p19),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(
                      _getPreviousIndex(),
                      duration: const Duration(
                          milliseconds: AppConstants.sliderDelay),
                      curve: Curves.bounceInOut,
                    );
                  },
                  child: SizedBox(
                    height: AppSize.s14,
                    width: AppSize.s14,
                    child: SvgPicture.asset(ImageAssets.leftArrowIcon),
                  ),
                ),
              ),
            ),
          ),
          if (_currentPageIndex == 0) const SizedBox(),

          //Circle indicators
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < _list.length; i++)
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppPadding.p10),
                    child: _getProperCircle(i),
                  ),
              ],
            ),
          ),

          //right arrow
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p15, vertical: AppPadding.p19),
            child: Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: _goNextPage,
                child: SizedBox(
                  height: AppSize.s14,
                  width: AppSize.s14,
                  child: SvgPicture.asset(ImageAssets.rightArrowIcon),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getProperCircle(int index) {
    if (index == _currentPageIndex) {
      return SvgPicture.asset(ImageAssets.hollowCircleIcon);
    } else {
      return SvgPicture.asset(ImageAssets.solidCircleIcon);
    }
  }

  //get previous index
  int _getPreviousIndex() {
    int previousIndex = 0;
    if (_currentPageIndex <= (_list.length) - 1 && (_currentPageIndex != 0)) {
      previousIndex = --_currentPageIndex;
    } else if (_currentPageIndex == 0) {
      previousIndex = _currentPageIndex;
    }
    return previousIndex;
  }

  //next page function
  void _goNextPage() {
    if (_currentPageIndex < (_list.length) - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: AppConstants.sliderDelay),
          curve: Curves.bounceInOut);
    } else if (_currentPageIndex == (_list.length) - 1) {
      //boardingValue = true;
      //save to cache helper boarding var
      Navigator.pushReplacementNamed(context, Routes.loginRoute);
    }
  }
}

// on_boarding_item_widget (one item of page view)
class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget(this._boardingModel, {Key? key}) : super(key: key);
  final BoardingModel _boardingModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: AppSize.s81,
          ),
          Text(
            _boardingModel.title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: AppSize.s7,
          ),
          Text(
            _boardingModel.subTitle,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: AppSize.s72,
          ),
          SizedBox(
              height: AppSize.s267,
              width: AppSize.s267,
              child: Image.asset(_boardingModel.image)),
        ],
      ),
    );
  }
}
