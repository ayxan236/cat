import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cat_fact/assets/assets.dart';
import 'package:cat_fact/data/data_source/cat_facts_data_source.dart';
import 'package:cat_fact/repository/dio_configurations.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../data/models/cat_fsatc_model.dart';

part 'cat_fact_event.dart';
part 'cat_fact_state.dart';

class CatFactBloc extends Bloc<CatFactEvent, CatFactState> {
  final CatFactDataSource dataSource = CatFactDataSource(dio);
  CatFactBloc() : super(CatFactInitial()) {
    on<CatFactEvent>((event, emit) async {
      Box<CatFactModel> box = Hive.box("catFacts");

      emit(CatFactLoading());
      if (event is CatFactFetchEvent) {
        emit(CatFactLoading());
        try {
          var resul = await dataSource.getFacts();
          var random = Random();
          var data =
              resul.copyWith(image: Assets.catFoto + "${random.nextInt(100)}");
          emit(CatFactFetched(catFactModel: data));
          box.add(data);
        } catch (e) {
          emit(CatFactError());
        }
      }
    });
  }
}
