import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_fact/data/models/cat_fsatc_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../assets/assets.dart';
import '../../../blocs/cat_fact_bloc/cat_fact_bloc.dart';
import '../../../blocs/cat_local_bloc/cat_local_bloc.dart';
import '../catLocalList/cat_local_list_page.dart';

part 'screen/home_screen.dart';
part 'widget/image_card_widget.dart';
part 'widget/text_card_widget.dart';
part 'widget/buttons_widget.dart';
part 'widget/clipped_image_widget.dart';
