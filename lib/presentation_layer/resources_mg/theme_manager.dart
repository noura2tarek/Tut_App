import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tutac_app/presentation_layer/resources_mg/fonts_manager.dart';
import 'color_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

ThemeData? getAppTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.lightGrey,
    //grey1
    //ripple effect color
    splashColor: ColorManager.lightPrimary,
    scaffoldBackgroundColor: ColorManager.white,
    // app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      shadowColor: ColorManager.lightPrimary,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorManager.primary,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),

      iconTheme: const IconThemeData(
        color: ColorManager.white,
      ),
      titleTextStyle:
          getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white),
    ),

    // card theme
    cardTheme: const CardTheme(
      color: ColorManager.white,
      elevation: AppSize.s4,
      shadowColor: ColorManager.grey,
    ),

    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle:
          getRegularStyle(fontSize: FontSize.s14, color: ColorManager.grey),
      labelStyle:
          getMediumStyle(fontSize: FontSize.s14, color: ColorManager.grey),
      errorStyle: getRegularStyle(color: ColorManager.error),
      //enabled border style
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
        //width is the thickness of border
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s11)),
      ),
      //focused border style
      focusedBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        //width is the thickness of border
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s11)),
      ),
      //error border style
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        //width is the thickness of border
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s11)),
      ),
      //focused error border style
      focusedErrorBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        //width is the thickness of border
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s11)),
      ),
    ),
    // button theme
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.lightGrey, //grey1
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),

    //Elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primary,
        foregroundColor: ColorManager.white,
        textStyle: getRegularStyle(fontSize: FontSize.s17),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s11),
        ),
      ),
    ),

    //Text Button Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: ColorManager.primary,
        textStyle: getMediumStyle(fontSize: FontSize.s16,),
      ),
    ),

    // text theme
    textTheme: TextTheme(
      headlineLarge: getMediumStyle(
          fontSize: FontSize.s18,
          color: ColorManager.darkGrey,
      ),
      titleLarge:
          getRegularStyle(fontSize: FontSize.s14, color: ColorManager.darkGrey),
      headlineMedium:
          getRegularStyle(fontSize: FontSize.s18, color: ColorManager.primary),
      titleSmall:
          getBoldStyle(fontSize: FontSize.s12, color: ColorManager.primary),
      displaySmall:
          getRegularStyle(fontSize: FontSize.s12, color: ColorManager.grey2),
      bodySmall: getMediumStyle(fontSize: FontSize.s16,),
      titleMedium:
          getRegularStyle(fontSize: FontSize.s14, color: ColorManager.grey3),
      bodyMedium:
          getMediumStyle(fontSize: FontSize.s14, color: ColorManager.lightGrey),
      labelLarge:
          getRegularStyle(fontSize: FontSize.s12, color: ColorManager.grey2),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      clipBehavior: Clip.none,
      backgroundColor: ColorManager.white,
      elevation: AppSize.s0,
      shape: LinearBorder(
       side: BorderSide.none,
      ),
    ),

    //bottom navigation bar theme
  );
}
