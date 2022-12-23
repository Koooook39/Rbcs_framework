import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rbcs_framework/cleint/Home/Controller/cleintHomeController.dart';
import 'package:rbcs_framework/routes/app_routes.dart';

class CleintHomeScreen extends StatelessWidget {
  CleintHomeScreen();
  var _controller = Get.put(CleintHomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                '${_controller.counter.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.increment();
          Get.toNamed(AppPages.expert);
        },
        tooltip: 'Hello?',
        child: const Icon(Icons.add),
      ),
    );
  }
}
