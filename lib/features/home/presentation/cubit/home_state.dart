part of 'home_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class GetHomeLoading extends HomeState {}

final class GetHomeError extends HomeState {
  final String message;

  const GetHomeError(this.message);

  @override
  List<Object> get props => [
        message,
      ];
}

final class GetHomeLoaded extends HomeState {
  final HomeResponseModel data;

  const GetHomeLoaded(this.data);

  @override
  List<Object> get props => [data];
}
