part of 'cat_local_bloc.dart';

@immutable
abstract class CatlocalState {}

class CatlocalInitial extends CatlocalState {}

class CatlocalLoading extends CatlocalState {}

class CatlocalError extends CatlocalState {}

class CatlocalFetched extends CatlocalState {
  final Box<CatFactModel>? catBox;
  CatlocalFetched(this.catBox);
}
