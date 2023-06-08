import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/button_widget_controller.dart';

class ButtonWidgetView extends StatefulWidget {
  const ButtonWidgetView({Key? key}) : super(key: key);

  Widget build(context, ButtonWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ButtonWidget"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<ButtonWidgetView> createState() => ButtonWidgetController();
}