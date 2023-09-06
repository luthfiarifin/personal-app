import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_app/core/domain/usecase.dart';
import 'package:personal_app/features/home/data/model/home_response_model.dart';

import '../../domain/usecase/get_home_data_use_case.dart';

part 'home_state.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  final GetHomeDataUseCase _getHomeDataUseCase;

  HomeCubit(
    this._getHomeDataUseCase,
  ) : super(HomeInitial());

  void getData() async {
    emit(GetHomeLoading());

    final failureOrSuccess = await _getHomeDataUseCase(NoParams());
    emit(failureOrSuccess.fold(
      (failure) => GetHomeError(failure.message),
      (success) => GetHomeLoaded(success),
    ));
  }
}
