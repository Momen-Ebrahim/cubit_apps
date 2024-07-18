import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'basketball_state.dart';

class BasketballCubit extends Cubit<BasketballState> {
  BasketballCubit() : super(BasketballInitial());
  int acounter = 0;
  int bcounter = 0;
  void changesocor({required String team, required int point}) {
    if (team == 'a') {
      acounter += point;
      emit(BasketballATeam());
    } else {
      bcounter += point;
      emit(BasketballBTeam());
    }
  }

  void reset() {
    acounter = 0;
    bcounter = 0;
    emit(BasketballInitial());
  }
}
