import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:match_job/app/my_app.dart';
import 'package:match_job/features/browse/domain/models/company_model.dart';

part 'browse_state.dart';

class BrowseCubit extends Cubit<BrowseState> {
  BrowseCubit() : super(BrowseInitial());
  static final BrowseCubit _browseCubit = BlocProvider.of(
    navigatorKey.currentContext!,
  );
  static BrowseCubit get instance => _browseCubit;
  List<CompanyModel> companies = [
    CompanyModel(
      id: 1,
      nameCompany: "اسم الشركة",
      addressCompany: "الرياض , السعودية",
      imageCompany: '',
      theLessSalary: 1500,
      theGreatSalary: 2000,
      averageRate: 4.5,
    ),
    CompanyModel(
      id: 2,
      nameCompany: "اسم الشركة",
      addressCompany: "الرياض , السعودية",
      imageCompany: '',
      theLessSalary: 1500,
      theGreatSalary: 2000,
      averageRate: 4.5,
    ),
    CompanyModel(
      id: 3,
      nameCompany: "اسم الشركة",
      addressCompany: "الرياض , السعودية",
      imageCompany: '',
      theLessSalary: 1500,
      theGreatSalary: 2000,
      averageRate: 4.5,
    ),
    CompanyModel(
      id: 4,
      nameCompany: "اسم الشركة",
      addressCompany: "الرياض , السعودية",
      imageCompany: '',
      theLessSalary: 1500,
      theGreatSalary: 2000,
      averageRate: 4.5,
    ),
  ];
}
