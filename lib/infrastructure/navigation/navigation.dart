import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:code_editor/config.dart';
import 'package:code_editor/infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
import 'package:code_editor/infrastructure/navigation/routes.dart';
import 'package:code_editor/presentation/screens.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;

  const EnvironmentsBadge({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashControllerBinding(),
    ),
    GetPage(
      name: Routes.TABS,
      page: () => const TabsScreen(),
      binding: TabsControllerBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => const ProfileScreen(),
      binding: ProfileControllerBinding(),
    ),
    GetPage(
      name: Routes.EDITOR,
      page: () => const EditorScreen(),
      binding: EditorControllerBinding(),
    ),
    GetPage(
      name: Routes.EXAMPLE_ONE,
      page: () => const ExampleOneScreen(),
      binding: ExampleOneControllerBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterScreen(),
      binding: RegisterControllerBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginControllerBinding(),
    ),
  ];
}
