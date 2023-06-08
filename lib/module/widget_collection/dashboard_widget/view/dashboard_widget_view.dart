import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DashboardWidgetView extends StatefulWidget {
  const DashboardWidgetView({Key? key}) : super(key: key);

  Widget build(context, DashboardWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("WidgetCollection"),
        actions: const [],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.0,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: controller.menuList.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.menuList[index];
          return InkWell(
            onTap: () => Get.to(item["view"]),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item["label"],
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  State<DashboardWidgetView> createState() => DashboardWidgetController();
}
