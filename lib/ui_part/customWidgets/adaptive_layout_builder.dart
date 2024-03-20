import 'package:flutter/material.dart';

class AdaptiveLayoutBuilder extends StatelessWidget {
  final WidgetBuilder mobileLayout,
      tabletLayout,
      desktopLayout,
      miniDesktopLayout;

  const AdaptiveLayoutBuilder(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout,
      required this.miniDesktopLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 800) {
          return mobileLayout(context);
        } else if (constrains.maxWidth >= 800 && constrains.maxWidth < 1200) {
          return tabletLayout(context);
        } else if (constrains.maxWidth >= 1200 && constrains.maxWidth < 1750) {
          return miniDesktopLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
