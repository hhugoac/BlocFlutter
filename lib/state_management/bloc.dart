import 'cubit.dart';

abstract class Bloc<Event, State> extends Cubit<State> {
  Bloc(super.initialState);
}
