import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:code_editor/infrastructure/navigation/navigation.dart';
import 'package:code_editor/infrastructure/navigation/routes.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'domain/core/constants/app.constants.dart';
import 'domain/core/di.container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();

  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
  );
  final initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;

  const Main(this.initialRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1.5,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: initialRoute,
        getPages: Nav.routes,
      ),
    );
  }
}
