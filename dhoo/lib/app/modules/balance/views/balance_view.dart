import 'package:dhoo/app/shared/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/balance_controller.dart';

class BalanceView extends GetView<BalanceController> {
  const BalanceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Balance',
                  style: medium.copyWith(fontSize: 16, color: darkGrey),
                ),
                Text(
                  'Rs 570.00',
                  style: semibold.copyWith(fontSize: 30),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 38,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '4/2023',
                          style: regular.copyWith(fontSize: 12, color: grey),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '4/2023',
                          style: regular.copyWith(fontSize: 12, color: grey),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '4/2023',
                          style: regular.copyWith(fontSize: 12, color: grey),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '4/2023',
                          style: regular.copyWith(fontSize: 12, color: grey),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '4/2023',
                          style: regular.copyWith(fontSize: 12, color: grey),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '4/2023',
                          style: regular.copyWith(fontSize: 12, color: grey),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '4/2023',
                          style: regular.copyWith(fontSize: 12, color: grey),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 16,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(30),
            height: 105,
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/mask_circle.png'),
                    fit: BoxFit.cover),
                color: lighRed,
                borderRadius: BorderRadius.circular(18)),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/ic_splash.png'),
                            scale: 1.5)),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monthly Expenses',
                      style:
                          regular.copyWith(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      '-Rs 25,00.00',
                      style:
                          semibold.copyWith(fontSize: 17, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            color: background,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Last Transaction',
                  style: semibold.copyWith(fontSize: 16),
                ),
                Container(
                  width: Get.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today, Sept 3',
                        style: semibold.copyWith(fontSize: 14),
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        color: darkGrey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Water',
                                    style: semibold.copyWith(fontSize: 12),
                                  ),
                                  Text(
                                    '09.00 Am',
                                    style: semibold.copyWith(
                                        fontSize: 12, color: darkGrey),
                                  )
                                ],
                              )
                            ],
                          ),
                          Expanded(
                              child: Text(
                            '+Rp 700.00',
                            style:
                                semibold.copyWith(fontSize: 12, color: purple),
                            textAlign: TextAlign.right,
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Top Up',
                                    style: semibold.copyWith(fontSize: 12),
                                  ),
                                  Text(
                                    '09.00 Am',
                                    style: semibold.copyWith(
                                        fontSize: 12, color: darkGrey),
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
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Top Up',
                                    style: semibold.copyWith(fontSize: 12),
                                  ),
                                  Text(
                                    '09.00 Am',
                                    style: semibold.copyWith(
                                        fontSize: 12, color: darkGrey),
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
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Top Up',
                                    style: semibold.copyWith(fontSize: 12),
                                  ),
                                  Text(
                                    '09.00 Am',
                                    style: semibold.copyWith(
                                        fontSize: 12, color: darkGrey),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Top Up',
                                    style: semibold.copyWith(fontSize: 12),
                                  ),
                                  Text(
                                    '09.00 Am',
                                    style: semibold.copyWith(
                                        fontSize: 12, color: darkGrey),
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
          )
        ],
      ),
    );
  }
}
