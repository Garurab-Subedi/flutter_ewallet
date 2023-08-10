import 'package:dhoo/app/routes/app_pages.dart';
import 'package:dhoo/app/shared/theme.dart';
import 'package:dhoo/app/widgets/ButtonWidgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create your Account',
                  style: semibold.copyWith(
                    fontSize: 18,
                    color: darkerBlack,
                  ),
                ),
                Text('Create your account to start a journey',
                    style: regular.copyWith(
                      fontSize: 10,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 221,
              width: 221,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/signup.png'), scale: 1)),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fullname',
                    style: semibold.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40,
                          // width: Get.width * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: lineStroke),
                          ),
                          child: TextField(
                            autocorrect: false,
                            style: regular.copyWith(
                                fontSize: 12, color: darkerBlack),
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.fromLTRB(16, 0, 16, 10),
                                hintText: 'First Name'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 40,
                        width: Get.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: lineStroke,
                          ),
                        ),
                        child: TextField(
                          autocorrect: false,
                          style: regular.copyWith(
                            fontSize: 12,
                            color: darkerBlack,
                          ),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 10),
                              hintText: 'Last Name'),
                        ),
                      ), 
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email',
                    style: semibold.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 40,
                    // width: Get.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: lineStroke,
                      ),
                    ),
                    child: TextField(
                      autocorrect: false,
                      style: regular.copyWith(
                        fontSize: 12,
                        color: darkerBlack,
                      ),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 10),
                          hintText: 'Enter Your Email'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    ' Password',
                    style: semibold.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 40,
                    // width: Get.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: lineStroke,
                      ),
                    ),
                    child: TextField(
                      autocorrect: false,
                      obscureText: true,
                      style: regular.copyWith(
                        fontSize: 12,
                        color: darkerBlack,
                      ),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 10),
                          hintText: 'password'),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.offAllNamed(Routes.SIGNIN);
                      },
                      child: const ButtonWidgets(
                        label: 'Create Account',
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have a account?',
                        style: regular.copyWith(fontSize: 12, color: darkGrey),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAllNamed(Routes.SIGNIN);
                        },
                        child: Text(
                          'Sing In',
                          style: regular.copyWith(fontSize: 12, color: purple),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
