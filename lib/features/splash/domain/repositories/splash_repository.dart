import 'package:match_job/core/constant/appStrings.dart';
import 'package:match_job/features/splash/domain/repositories/splash_repository_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashRepository implements SplashRepositoryInterface {
  final SharedPreferences sharedPreferences;
  SplashRepository({required this.sharedPreferences});

  @override
  Future<bool> initSharedData(bool isDark) {
    if (!sharedPreferences.containsKey(AppConstant.theme)) {
      sharedPreferences.setBool(AppConstant.theme, isDark);
    }
    return Future.value(true);
  }

  @override
  void setThemeStatusSharedPref(bool darkTheme) {
    sharedPreferences.setBool(AppConstant.theme, darkTheme);
  }

  @override
  Future<bool> getCurrentThemeSharedPref() async {
    return sharedPreferences.getBool(AppConstant.theme) ?? false;
  }
}
