import 'package:biblioteca/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomThemes {
  static final lightTheme = ThemeData(
    primaryColorDark: AppColors.primaryColor,
    iconTheme: const IconThemeData(
      color: AppColors.primaryColor,
    ),
    tabBarTheme: const TabBarTheme(
      indicatorColor: AppColors.primaryColor,
      labelColor: Colors.black,
      labelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.primaryColor;
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.primaryColor.withOpacity(0.3);
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return AppColors.primaryColor;
      }
      return null;
    })),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      floatingLabelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      prefixIconColor:
          MaterialStateColor.resolveWith((Set<MaterialState> states) {
        final Color color = states.contains(MaterialState.focused)
            ? AppColors.primaryColor
            : AppColors.inputText;
        return color;
      }),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    primaryColor: AppColors.primaryColor,
    bottomAppBarTheme: const BottomAppBarTheme(color: AppColors.containerColor),
    buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.primaryColor,
        disabledColor: AppColors.disabledColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        textStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.containerColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.disabledColor,
    ),
    unselectedWidgetColor: AppColors.disabledColor,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.green,
    ).copyWith(
      secondary: AppColors.segundaryColor,
      primaryContainer: AppColors.containerColor,
      tertiary: AppColors.tertiaryColor,
      background: AppColors.backgroundColor,
      onTertiary: AppColors.disabledColor,
      onBackground: AppColors.textColor,
      onSecondary: AppColors.subTextsColors,
      brightness: Brightness.light,
    ),
  );
}
