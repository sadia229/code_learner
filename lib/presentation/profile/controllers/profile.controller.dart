import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileController extends GetxController {
  final user = Rx<User?>(null);

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
  }
}
