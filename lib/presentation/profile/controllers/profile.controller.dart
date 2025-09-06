import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:code_editor/infrastructure/data/model/user.model.dart';

class ProfileController extends GetxController {
  final user = Rx<User?>(null);
  final users = Rxn<Users>();

  @override
  Future<void> onInit() async {
    super.onInit();
    await getUser();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> getUser() async {
    final session = Supabase.instance.client.auth.currentSession;
    user.value = session?.user;
    if (user.value != null) {
      users.value = Users.fromJson(user.value?.userMetadata ?? {});
    }
  }
}
