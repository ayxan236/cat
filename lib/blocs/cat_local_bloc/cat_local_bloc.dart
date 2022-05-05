import 'package:bloc/bloc.dart';
import 'package:cat_fact/data/models/cat_fsatc_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'cat_local_event.dart';
part 'cat_local_state.dart';

class CatlocalBloc extends Bloc<CatlocalEvent, CatlocalState> {
  CatlocalBloc() : super(CatlocalInitial()) {
    on<CatlocalEvent>((event, emit) async {
      Box<CatFactModel> box = Hive.box("catFacts");
      emit(CatlocalLoading());
      if (event is CatlocalFetch) {
        emit(CatlocalLoading());
        try {
          emit(CatlocalFetched(box));
        } catch (e) {
          emit(CatlocalError());
        }
      } else if (event is CatlocalFetch) {
        box.close();
      }
    });
  }
}
