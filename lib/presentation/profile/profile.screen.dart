import 'package:code_editor/presentation/profile/components/user_information_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:code_editor/presentation/profile/controllers/profile.controller.dart';

import '../../infrastructure/navigation/routes.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Obx(() {
              return Column(
                children: [
                  SizedBox(height: Get.height * 0.08),
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.orange,
                    backgroundImage: NetworkImage(
                      'https://play-lh.googleusercontent.com/HHJb4ew7S16SHjqNjp1nEkVKn8L2j1rXPjVmF4fqf-mGjZYYIjhHYKjUJSLbB7SRx1HS',
                    ),
                  ),
                  const SizedBox(height: 16),
                  UserInformationCard(
                    title: "Name",
                    subtitle: controller.users.value?.name ?? "",
                    icon: Icons.person,
                  ),
                  UserInformationCard(
                      title: "Email",
                      subtitle: controller.users.value?.email ?? "",
                      icon: Icons.mail),
                  UserInformationCard(
                      title: "Phone",
                      subtitle: controller.users.value?.phone ?? "",
                      icon: Icons.phone),
                  // const UserInformationCard(
                  //     title: "Github Username",
                  //     subtitle: "johndoe",
                  //     icon: Icons.code_sharp),
                  // const UserInformationCard(
                  //     title: "Package Details",
                  //     subtitle: "Mini Plan",
                  //     icon: Icons.list_alt),
                  // const UserInformationCard(
                  //     title: "Packages",
                  //     subtitle: "",
                  //     icon: Icons.monetization_on),
                  UserInformationCard(
                    title: "Tips & Tricks",
                    subtitle: "",
                    icon: Icons.tips_and_updates_outlined,
                    onTap: () => Get.toNamed(Routes.COMMING_SOON),
                  ),
                  const UserInformationCard(
                      title: "Terms and Conditions",
                      subtitle: "",
                      icon: Icons.gavel),
                  const UserInformationCard(
                      title: "Privacy Policy",
                      subtitle: "",
                      icon: Icons.security),
                  const UserInformationCard(
                      title: "Logout", subtitle: "", icon: Icons.logout),
                  SizedBox(height: Get.height * 0.04),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
