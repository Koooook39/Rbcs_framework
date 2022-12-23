import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rbcs_framework/cleint/experts/Controller/expertController.dart';

class ExpertsScreen extends StatelessWidget {
  ExpertsScreen({super.key});
  var _controller = Get.find<ExpertsController>();
  var args = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade400,
        title: Text('Experts list'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              height: Get.size.height,
              width: Get.size.width,
              child: GetBuilder(
                init: ExpertsController(),
                builder: (_) {
                  return ListView.builder(
                    itemCount: _controller.experts.length,
                    itemBuilder: (BuildContext context, int index) {
                      var item = _controller.experts[index];
                      return ExpertCard(
                        item: item,
                      );
                    },
                  );
                },
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _controller.addExpert();
      }),
    );
  }
}

class ExpertCard extends StatelessWidget {
  ExpertCard({super.key, this.item});
  var item;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 237, 220, 240),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(item.photo.toString()))),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name.toString(),
                      style: TextStyle(
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      item.phone.toString(),
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
