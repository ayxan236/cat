part of 'cat_fact_bloc.dart';

abstract class CatFactState {}

class CatFactInitial extends CatFactState {}

class CatFactLoading extends CatFactState {}

class CatFactError extends CatFactState {}

class CatFactFetched extends CatFactState {
  final CatFactModel? catFactModel;

  CatFactFetched({
    @required this.catFactModel,
  });
}
