import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constants/strings.dart';
import 'package:flutter_ecommerce_app/features/auth/data/controllers/auth_functions.dart';
import 'package:flutter_ecommerce_app/features/widgets/profile_header.dart';
import 'package:flutter_ecommerce_app/services/response.dart';
import 'package:flutter_ecommerce_app/themes/color_styles.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:provider/provider.dart';

Widget buildActionBar(BuildContext context) {
  final profilePic = context.read<ResponseService>().user.photoURL;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProfileHeader(
            lightWelcomeText: StaticText.welcomeBackProfile.tr,
          ),
          GestureDetector(
            onTap: () {
              Get.defaultDialog(
                title: 'Sign out',
                middleText: 'Do you really want to sign out?',
                textCancel: 'No',
                textConfirm: 'Yes',
                confirmTextColor: ColorStyles.pureWhite,
                onConfirm: () {
                  AuthFunctions.signOutUser(context);
                },
              );
            },
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                profilePic ?? "",
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
