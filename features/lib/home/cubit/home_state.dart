part of 'home_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeLoadSuccess extends HomeState {
  final List<UserModel> users;

  const HomeLoadSuccess({required this.users});
}

final class HomeLoadError extends HomeState {
  final String? message;

  const HomeLoadError(this.message);
}
