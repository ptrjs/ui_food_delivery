import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DashboardWidgetController extends State<DashboardWidgetView>
    implements MvcController {
  static late DashboardWidgetController instance;
  late DashboardWidgetView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List menuList = [
    {
      "label": "Carousel",
      "view": CarouselWidgetView(),
    },
    {
      "label": "Card",
      "view": CardWidgetView(),
    },
    {
      "label": "Button",
      "view": ButtonWidgetView(),
    },
    {
      "label": "Form",
      "view": FormWidgetView(),
    },
  ];
}
