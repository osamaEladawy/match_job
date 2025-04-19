import 'package:get_it/get_it.dart';
import 'package:match_job/features/auth/auth_injections.dart';
import 'package:match_job/features/browse/browse_injections.dart';
import 'package:match_job/features/home_tap/home_tap_injections.dart';
import 'package:match_job/features/job_applying/job_applying_injections.dart';
import 'package:match_job/features/onboarding/onboard_injections.dart';
import 'package:match_job/features/splash/splash_injection.dart';
import 'package:match_job/shared/cubits/location_injections.dart';

import 'features/chat/chat_injections.dart';
import 'features/my_jobs/my_jobs_injections.dart';
import 'features/profile/profile_injections.dart';
import 'features/services/services_injections.dart';

GetIt getIt = GetIt.instance;

Future<void> appInjections() async {
  initSplashInjection();
  onBoardInjections();
  authInjections();
  locationInjections();
  homeTapInjections();
  browseInjections();
  jobApplyingInjections();
  myJobsInjections();
  servicesInjections();
  chatInjections();
  profileInjection();
}
