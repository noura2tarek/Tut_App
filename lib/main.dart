import 'package:flutter/material.dart';
import 'package:tutac_app/app_layer/app.dart';

import 'data_layer/local/cache_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(MyApp());
}




