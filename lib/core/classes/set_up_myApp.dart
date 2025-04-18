

import 'package:flutter/cupertino.dart';
import 'package:match_job/core/constant/appStrings.dart';
import 'package:match_job/shared/cubits/location_bloc/location_cubit.dart';
import 'package:match_job/shared/models/language_model.dart';

const Locale arabic = Locale('ar');
const Locale english = Locale('en');

class SetUpMyApp {
  static LanguageModel? languageModel;
  static List<LanguageModel> languageList = [
    LanguageModel(id: 1, txt: AppConstant.english),
    LanguageModel(id: 2, txt: AppConstant.arabic),
  ];
  static Future<bool> getLocation(BuildContext context) async {
    // LocationCubit locationCubit = BlocProvider.of(context,listen: false);
    bool? getLocation = await LocationCubit.instance.getGeoLocation(context);
    if (getLocation == true) {
      return true;
    } else {
      return false;
    }
  }
}

