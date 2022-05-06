import 'package:cat_fact/data/models/cat_fsatc_model.dart';
import 'package:cat_fact/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(CatFactModelAdapter());
  var box = await Hive.openBox<CatFactModel>("catFacts");
  runApp(const MyApp());
}
