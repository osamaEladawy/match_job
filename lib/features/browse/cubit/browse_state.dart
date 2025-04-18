part of 'browse_cubit.dart';

sealed class BrowseState extends Equatable {
  const BrowseState();

  @override
  List<Object> get props => [];
}

final class BrowseInitial extends BrowseState {}
