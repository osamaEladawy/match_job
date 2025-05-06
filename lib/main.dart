import 'package:error_stack/error_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:match_job/app/my_app.dart';
import 'package:match_job/app_injections.dart';
import 'package:match_job/core/storage/pref_services.dart';
import 'package:match_job/core/storage/secure_storage_service.dart';
import 'package:match_job/shared/classes/set_up_logger.dart';
import 'package:match_job/shared/cubits/bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ErrorStack.init();
  await PrefServices.instance.init();
  await SecureStorageService.instance.init();
  await appInjections();
  Bloc.observer = MyBlocObserver();
  //MyLogger.instance.initLogger();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}
