// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Welcome 👋`
  String get welcome {
    return Intl.message(
      'Welcome 👋',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Job seeker`
  String get jobSeeker {
    return Intl.message(
      'Job seeker',
      name: 'jobSeeker',
      desc: '',
      args: [],
    );
  }

  /// `Employer`
  String get employer {
    return Intl.message(
      'Employer',
      name: 'employer',
      desc: '',
      args: [],
    );
  }

  /// `National ID`
  String get nationalID {
    return Intl.message(
      'National ID',
      name: 'nationalID',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Choose`
  String get choose {
    return Intl.message(
      'Choose',
      name: 'choose',
      desc: '',
      args: [],
    );
  }

  /// `Visa from Egypt`
  String get visaFromEgypt {
    return Intl.message(
      'Visa from Egypt',
      name: 'visaFromEgypt',
      desc: '',
      args: [],
    );
  }

  /// `Transfer of sponsorship`
  String get transferOfSponsorship {
    return Intl.message(
      'Transfer of sponsorship',
      name: 'transferOfSponsorship',
      desc: '',
      args: [],
    );
  }

  /// `Create a new account`
  String get createAnewAccount {
    return Intl.message(
      'Create a new account',
      name: 'createAnewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Do you already have an account?`
  String get do_you_already_have_an_account {
    return Intl.message(
      'Do you already have an account?',
      name: 'do_you_already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get log_in {
    return Intl.message(
      'Log in',
      name: 'log_in',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgot_your_password {
    return Intl.message(
      'Forgot your password?',
      name: 'forgot_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dont_have_an_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `The authentication code was sent to the registered phone number`
  String get the_authentication_code {
    return Intl.message(
      'The authentication code was sent to the registered phone number',
      name: 'the_authentication_code',
      desc: '',
      args: [],
    );
  }

  /// `within`
  String get within {
    return Intl.message(
      'within',
      name: 'within',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive the code?`
  String get didnt_receive_the_code {
    return Intl.message(
      'Didn\'t receive the code?',
      name: 'didnt_receive_the_code',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `follow up on registration`
  String get Follow_up_on_registration {
    return Intl.message(
      'follow up on registration',
      name: 'Follow_up_on_registration',
      desc: '',
      args: [],
    );
  }

  /// `Auth code`
  String get Auth_code {
    return Intl.message(
      'Auth code',
      name: 'Auth_code',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password`
  String get forgot_password {
    return Intl.message(
      'Forgot your password',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get follow {
    return Intl.message(
      'Follow',
      name: 'follow',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPassword {
    return Intl.message(
      'New password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `name`
  String get name {
    return Intl.message(
      'name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `user name`
  String get userName {
    return Intl.message(
      'user name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `the job`
  String get theJob {
    return Intl.message(
      'the job',
      name: 'theJob',
      desc: '',
      args: [],
    );
  }

  /// `The institution`
  String get theInstitution {
    return Intl.message(
      'The institution',
      name: 'theInstitution',
      desc: '',
      args: [],
    );
  }

  /// `Complete the data`
  String get Complete_the_data {
    return Intl.message(
      'Complete the data',
      name: 'Complete_the_data',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to`
  String get byCreatingAnAccount {
    return Intl.message(
      'By creating an account, you agree to',
      name: 'byCreatingAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `User Agreement`
  String get userAgreement {
    return Intl.message(
      'User Agreement',
      name: 'userAgreement',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `our`
  String get our {
    return Intl.message(
      'our',
      name: 'our',
      desc: '',
      args: [],
    );
  }

  /// `Personal information`
  String get personal_information {
    return Intl.message(
      'Personal information',
      name: 'personal_information',
      desc: '',
      args: [],
    );
  }

  /// `education`
  String get education {
    return Intl.message(
      'education',
      name: 'education',
      desc: '',
      args: [],
    );
  }

  /// `Previous experience`
  String get previous_experience {
    return Intl.message(
      'Previous experience',
      name: 'previous_experience',
      desc: '',
      args: [],
    );
  }

  /// `Skills`
  String get skills {
    return Intl.message(
      'Skills',
      name: 'skills',
      desc: '',
      args: [],
    );
  }

  /// `Projects`
  String get projects {
    return Intl.message(
      'Projects',
      name: 'projects',
      desc: '',
      args: [],
    );
  }

  /// `Profession`
  String get profession {
    return Intl.message(
      'Profession',
      name: 'profession',
      desc: '',
      args: [],
    );
  }

  /// `cards`
  String get cards {
    return Intl.message(
      'cards',
      name: 'cards',
      desc: '',
      args: [],
    );
  }

  /// `Save and follow`
  String get save_and_follow {
    return Intl.message(
      'Save and follow',
      name: 'save_and_follow',
      desc: '',
      args: [],
    );
  }

  /// `skip`
  String get skip {
    return Intl.message(
      'skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Data saved successfully`
  String get data_saved_successfully {
    return Intl.message(
      'Data saved successfully',
      name: 'data_saved_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Go to home`
  String get go_to_home {
    return Intl.message(
      'Go to home',
      name: 'go_to_home',
      desc: '',
      args: [],
    );
  }

  /// `my account`
  String get my_account {
    return Intl.message(
      'my account',
      name: 'my_account',
      desc: '',
      args: [],
    );
  }

  /// `conversations`
  String get conversations {
    return Intl.message(
      'conversations',
      name: 'conversations',
      desc: '',
      args: [],
    );
  }

  /// `browse`
  String get browse {
    return Intl.message(
      'browse',
      name: 'browse',
      desc: '',
      args: [],
    );
  }

  /// `My jobs`
  String get my_jobs {
    return Intl.message(
      'My jobs',
      name: 'my_jobs',
      desc: '',
      args: [],
    );
  }

  /// `services`
  String get services {
    return Intl.message(
      'services',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `The best app to find the right job`
  String get theBestAppToFindTheRightJob {
    return Intl.message(
      'The best app to find the right job',
      name: 'theBestAppToFindTheRightJob',
      desc: '',
      args: [],
    );
  }

  /// `Jobs that suit you`
  String get jobs_that_suit_you {
    return Intl.message(
      'Jobs that suit you',
      name: 'jobs_that_suit_you',
      desc: '',
      args: [],
    );
  }

  /// `everyone`
  String get everyone {
    return Intl.message(
      'everyone',
      name: 'everyone',
      desc: '',
      args: [],
    );
  }

  /// `the details`
  String get the_details {
    return Intl.message(
      'the details',
      name: 'the_details',
      desc: '',
      args: [],
    );
  }

  /// `Job details`
  String get job_details {
    return Intl.message(
      'Job details',
      name: 'job_details',
      desc: '',
      args: [],
    );
  }

  /// `Job Information`
  String get job_Information {
    return Intl.message(
      'Job Information',
      name: 'job_Information',
      desc: '',
      args: [],
    );
  }

  /// `Job`
  String get job {
    return Intl.message(
      'Job',
      name: 'job',
      desc: '',
      args: [],
    );
  }

  /// `qualification`
  String get qualification {
    return Intl.message(
      'qualification',
      name: 'qualification',
      desc: '',
      args: [],
    );
  }

  /// `Experiences`
  String get experiences {
    return Intl.message(
      'Experiences',
      name: 'experiences',
      desc: '',
      args: [],
    );
  }

  /// `Nature of work`
  String get nature_of_work {
    return Intl.message(
      'Nature of work',
      name: 'nature_of_work',
      desc: '',
      args: [],
    );
  }

  /// `Additional features`
  String get additional_features {
    return Intl.message(
      'Additional features',
      name: 'additional_features',
      desc: '',
      args: [],
    );
  }

  /// `Job requirements`
  String get job_requirements {
    return Intl.message(
      'Job requirements',
      name: 'job_requirements',
      desc: '',
      args: [],
    );
  }

  /// `Apply now`
  String get apply_now {
    return Intl.message(
      'Apply now',
      name: 'apply_now',
      desc: '',
      args: [],
    );
  }

  /// `The job application has been successfully submitted.`
  String get the_job_application_has_been_successfully_submitted {
    return Intl.message(
      'The job application has been successfully submitted.',
      name: 'the_job_application_has_been_successfully_submitted',
      desc: '',
      args: [],
    );
  }

  /// `I go to jobs`
  String get i_go_to_jobs {
    return Intl.message(
      'I go to jobs',
      name: 'i_go_to_jobs',
      desc: '',
      args: [],
    );
  }

  /// `Under processing`
  String get under_processing {
    return Intl.message(
      'Under processing',
      name: 'under_processing',
      desc: '',
      args: [],
    );
  }

  /// `It was presented`
  String get it_was_presented {
    return Intl.message(
      'It was presented',
      name: 'it_was_presented',
      desc: '',
      args: [],
    );
  }

  /// `It was rejected`
  String get it_was_rejected {
    return Intl.message(
      'It was rejected',
      name: 'it_was_rejected',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get the_services {
    return Intl.message(
      'Services',
      name: 'the_services',
      desc: '',
      args: [],
    );
  }

  /// `My requests`
  String get my_requests {
    return Intl.message(
      'My requests',
      name: 'my_requests',
      desc: '',
      args: [],
    );
  }

  /// `Verify your certificate`
  String get verify_your_certificate {
    return Intl.message(
      'Verify your certificate',
      name: 'verify_your_certificate',
      desc: '',
      args: [],
    );
  }

  /// `the date`
  String get the_date {
    return Intl.message(
      'the date',
      name: 'the_date',
      desc: '',
      args: [],
    );
  }

  /// `the time`
  String get theTime {
    return Intl.message(
      'the time',
      name: 'theTime',
      desc: '',
      args: [],
    );
  }

  /// `View details`
  String get view_details {
    return Intl.message(
      'View details',
      name: 'view_details',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `In progress`
  String get in_progress {
    return Intl.message(
      'In progress',
      name: 'in_progress',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get comment {
    return Intl.message(
      'Comment',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `Upload a file or image`
  String get upload_a_file_or_image {
    return Intl.message(
      'Upload a file or image',
      name: 'upload_a_file_or_image',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
