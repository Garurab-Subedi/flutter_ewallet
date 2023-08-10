import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/balance_controller.dart';

class BalanceView extends GetView<BalanceController> {
  const BalanceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BalanceView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BalanceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
