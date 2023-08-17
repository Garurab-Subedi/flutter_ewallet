import 'package:dhoo/app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../widgets/ButtonWidgets.dart';
import '../controllers/wallet_controller.dart';

class WalletView extends GetView<WalletController> {
  const WalletView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: background,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              Text(
                'Top up your \nwallet number',
                style: semibold.copyWith(fontSize: 18),
              ),
              Text(
                'Insert amount (Min. Rs 10.000)',
                style: regular.copyWith(fontSize: 12, color: darkerBlack),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                autocorrect: false,
                decoration: InputDecoration(
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Rp',
                            style: semibold.copyWith(fontSize: 18, color: grey),
                          ),
                        )
                      ],
                    ),
                    hintText: '0',
                    hintStyle: semibold.copyWith(fontSize: 18)),
                textAlign: TextAlign.end,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Amount',
                style: semibold.copyWith(fontSize: 18),
              ),
              Text(
                'Instanly add the nominal',
                style: regular.copyWith(fontSize: 12, color: darkGrey),
              ),
              const SizedBox(
                height: 30,
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => controller.setIndex(10000),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: controller.setAmountIndex.value == 10000
                                ? purple
                                : Colors.transparent,
                            border: Border.all(
                                color: controller.setAmountIndex.value == 10000
                                    ? purple
                                    : grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '10.000',
                          style: regular.copyWith(
                              fontSize: 12,
                              color: controller.setAmountIndex.value == 10000
                                  ? Colors.white
                                  : grey),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => controller.setIndex(5000),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: controller.setAmountIndex.value == 5000
                                ? purple
                                : Colors.transparent,
                            border: Border.all(
                                color: controller.setAmountIndex.value == 5000
                                    ? purple
                                    : grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '50.000',
                          style: regular.copyWith(
                              fontSize: 12,
                              color: controller.setAmountIndex.value == 5000
                                  ? Colors.white
                                  : grey),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => controller.setIndex(6000),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: controller.setAmountIndex.value == 6000
                                ? purple
                                : Colors.transparent,
                            border: Border.all(
                                color: controller.setAmountIndex.value == 6000
                                    ? purple
                                    : grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '60.000',
                          style: regular.copyWith(
                              fontSize: 12,
                              color: controller.setAmountIndex.value == 6000
                                  ? Colors.white
                                  : grey),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => controller.setIndex(700),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: controller.setAmountIndex.value == 700
                                ? purple
                                : Colors.transparent,
                            border: Border.all(
                                color: controller.setAmountIndex.value == 700
                                    ? purple
                                    : grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '70.000',
                          style: regular.copyWith(
                              fontSize: 12,
                              color: controller.setAmountIndex.value == 700
                                  ? Colors.white
                                  : grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => controller.setIndex(8000),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: controller.setAmountIndex.value == 8000
                                ? purple
                                : Colors.transparent,
                            border: Border.all(
                                color: controller.setAmountIndex.value == 8000
                                    ? purple
                                    : grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '80.000',
                          style: regular.copyWith(
                              fontSize: 12,
                              color: controller.setAmountIndex.value == 8
                                  ? Colors.white
                                  : grey),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => controller.setIndex(1000),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: controller.setAmountIndex.value == 1000
                                ? purple
                                : Colors.transparent,
                            border: Border.all(
                                color: controller.setAmountIndex.value == 1000
                                    ? purple
                                    : grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '100.000',
                          style: regular.copyWith(
                              fontSize: 12,
                              color: controller.setAmountIndex.value == 1000
                                  ? Colors.white
                                  : grey),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => controller.setIndex(3000),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: controller.setAmountIndex.value == 3000
                                ? purple
                                : Colors.transparent,
                            border: Border.all(
                                color: controller.setAmountIndex.value == 3000
                                    ? purple
                                    : grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '30.000',
                          style: regular.copyWith(
                              fontSize: 12,
                              color: controller.setAmountIndex.value == 3000
                                  ? Colors.white
                                  : grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
              alignment: const Alignment(0, 0.85),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Payment Method',
                                  style: semibold.copyWith(fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 45,
                                      height: 45,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/visa.png'),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      '... ... ... ... 128',
                                      style: semibold.copyWith(fontSize: 14),
                                    ),
                                    const Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(Icons.arrow_drop_down),
                                    ))
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                const Divider(),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text('Promo code '),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: grey),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: TextField(
                                    autocorrect: false,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter your Promo code ',
                                        hintStyle: regular.copyWith(
                                            fontSize: 12, color: grey)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Payment Summary',
                                  style: semibold.copyWith(fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Top Up',
                                      style: regular.copyWith(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                    Text(
                                      'Rs 100.00',
                                      style: semibold.copyWith(
                                          fontSize: 14, color: Colors.black),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Admin fee',
                                      style: regular.copyWith(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                    Text(
                                      'Rs 10.00',
                                      style: semibold.copyWith(
                                          fontSize: 14, color: Colors.black),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total',
                                      style: regular.copyWith(
                                          fontSize: 12, color: Colors.blue),
                                    ),
                                    Text(
                                      'Rs 110.00',
                                      style: semibold.copyWith(
                                          fontSize: 14, color: Colors.blue),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const ButtonWidgets(
                                  label: 'Top Up',
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: ButtonWidgets(label: 'Continue'),
                ),
              ))
        ],
      ),
    );
  }
}
