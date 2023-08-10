// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dhoo/app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/MenuItemWidgets.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var colorScheme;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hi, Garuab',
                    style:
                        semibold.copyWith(fontSize: 18, color: Colors.black)),
                Text(
                  'Wellcome',
                  style: regular.copyWith(fontSize: 12, color: Colors.black54),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/Badges.png'))),
                ),
              ),
            )
          ],
          centerTitle: false,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Container(
                    width: Get.width,
                    height: 234,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/background_banner.png'),
                          fit: BoxFit.fill),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Balance',
                          style: regular.copyWith(
                              fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          'Rs 5000',
                          style: semibold.copyWith(
                              fontSize: 30, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/ic_topup.png'),
                                          scale: 1.5),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Topup',
                                  style: regular.copyWith(
                                      fontSize: 12, color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/ic_pay.png'),
                                          scale: 1.5),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Pay',
                                  style: regular.copyWith(
                                      fontSize: 12, color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/ic_scan.png'),
                                          scale: 1.5),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Scan',
                                  style: regular.copyWith(
                                      fontSize: 12, color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pay Bill',
                        style: semibold.copyWith(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MenuItemWidgets(
                            image: 'ic_phone.png',
                            label: 'Phone',
                          ),
                          MenuItemWidgets(
                            image: 'ic_data.png',
                            label: 'Data',
                          ),
                          MenuItemWidgets(
                            image: 'ic_game.png',
                            label: 'Game',
                          ),
                          MenuItemWidgets(
                            image: 'ic_invest.png',
                            label: 'Invest',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MenuItemWidgets(
                            image: 'ic_air.png',
                            label: 'Water',
                          ),
                          MenuItemWidgets(
                            image: 'ic_bpjs.png',
                            label: 'Vehicle',
                          ),
                          MenuItemWidgets(
                            image: 'ic_web.png',
                            label: 'Web',
                          ),
                          MenuItemWidgets(
                            image: 'ic_pln.png',
                            label: 'Electric',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                    width: Get.width,
                    height: 900,
                    color: background,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Last Transaction',
                                  style: semibold.copyWith(fontSize: 18),
                                ),
                                Text(
                                  'Details',
                                  style: semibold.copyWith(
                                      fontSize: 12, color: Colors.purple),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: Get.width,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  const Text('Today, Sept 3'),
                                  const SizedBox(height: 10),
                                  const Divider(
                                    color: darkGrey,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: purple,
                                            child: Text('T'),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Water',
                                                style: semibold.copyWith(
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                '09.00 Am',
                                                style: semibold.copyWith(
                                                    fontSize: 12,
                                                    color: darkGrey),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Expanded(
                                          child: Text(
                                        '+Rp 700.00',
                                        style: semibold.copyWith(
                                            fontSize: 12, color: purple),
                                        textAlign: TextAlign.right,
                                      ))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: purple,
                                            child: Text('T'),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Top Up',
                                                style: semibold.copyWith(
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                '09.00 Am',
                                                style: semibold.copyWith(
                                                    fontSize: 12,
                                                    color: darkGrey),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Expanded(
                                          child: Text(
                                        '-Rp 500.00',
                                        style: semibold.copyWith(
                                            fontSize: 12, color: subtleRed),
                                        textAlign: TextAlign.right,
                                      ))
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            )
          ],
        ));
  }
}
