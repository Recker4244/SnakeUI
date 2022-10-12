import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'path_event.dart';
part 'path_state.dart';

class PathBloc extends Bloc<PathEvent, PathState> {
  PathBloc() : super(PathInitial()) {
    on<PathEvent>((event, emit) {
      
    });
  }
}
