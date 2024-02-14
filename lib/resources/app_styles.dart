import 'package:fontfamily_example/resources/shorts.dart';

abstract class AppStyles {
  static TextStyle getTitleStyle() => TextStyle(
        fontSize: 34,
        color: AppColors.titleAppColor,
        fontWeight: FontWeight.w500,
        fontFamily: 'Main',
      );
  static TextStyle getAppBarStyle() => TextStyle(
        fontSize: 38,
        color: AppColors.appBarAppColor,
        fontWeight: FontWeight.w700,
        fontFamily: 'Main',
      );
}
