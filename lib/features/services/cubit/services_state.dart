part of 'services_cubit.dart';

@immutable
sealed class ServicesState extends Equatable{
  const ServicesState();
}

final class ServicesInitial extends ServicesState {
  @override
  List<Object> get props => [];
}
final class ChangeIndex extends ServicesState {
  final int currentIndex;

   const ChangeIndex(this.currentIndex);

  @override
  List<Object> get props => [currentIndex];
}
