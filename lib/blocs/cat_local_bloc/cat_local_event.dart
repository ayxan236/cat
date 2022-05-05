part of 'cat_local_bloc.dart';

@immutable
abstract class CatlocalEvent {}
class CatlocalFetch extends CatlocalEvent {}
class CatlocalClose extends CatlocalEvent {}
