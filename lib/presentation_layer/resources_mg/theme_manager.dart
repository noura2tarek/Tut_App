import 'package:flutter/material.dart';
import 'package:tutac_app/presentation_layer/resources_mg/fonts_manager.dart';
import 'color_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.lightGrey, //grey1
    //ripple effect color
    splashColor: ColorManager.lightPrimary,

    // app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      iconTheme: const IconThemeData(
        color: ColorManager.white,
      ),
      titleTextStyle:
          getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white)
              as TextStyle?,
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
          getRegularStyle(fontSize: FontSize.s14, color: ColorManager.grey)
              as TextStyle?,
      labelStyle:
          getMediumStyle(fontSize: FontSize.s14, color: ColorManager.grey)
              as TextStyle?,
      errorStyle: getRegularStyle(color: ColorManager.error) as TextStyle?,
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
        textStyle: getRegularStyle(fontSize: FontSize.s17) as TextStyle?,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s11),
        ),
      ),
    ),

    // text theme
    textTheme: TextTheme(
        headlineSmall: getRegularStyle(
            fontSize: FontSize.s16,
            color: ColorManager.darkGrey,
            height: AppSize.s24) as TextStyle?,
        titleLarge:
            getRegularStyle(fontSize: FontSize.s14, color: ColorManager.darkGrey)
                as TextStyle?,
        headlineMedium:
            getRegularStyle(fontSize: FontSize.s18, color: ColorManager.primary)
                as TextStyle?,
        titleSmall: getBoldStyle(fontSize: FontSize.s12, color: ColorManager.primary)
            as TextStyle?,
        displaySmall:
            getRegularStyle(fontSize: FontSize.s12, color: ColorManager.grey2)
                as TextStyle?,
        titleMedium:
            getRegularStyle(fontSize: FontSize.s14, color: ColorManager.grey3)
                as TextStyle?,
        bodyMedium:
            getMediumStyle(fontSize: FontSize.s14, color: ColorManager.lightGrey)
                as TextStyle?,
        labelLarge: getRegularStyle(fontSize: FontSize.s12, color: ColorManager.grey2) as TextStyle?),

    //bottom navigation bar theme
  );
}
