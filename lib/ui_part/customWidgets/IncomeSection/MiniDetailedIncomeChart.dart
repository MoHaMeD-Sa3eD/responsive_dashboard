import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_styles.dart';

class MiniDetailedIncomeChart extends StatefulWidget {
  const MiniDetailedIncomeChart({super.key});

  @override
  State<MiniDetailedIncomeChart> createState() =>
      _MiniDetailedIncomeChartState();
}

class _MiniDetailedIncomeChartState extends State<MiniDetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            setState(() {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            });
          }),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex == 0 ? 'Design service' : '40%',
          radius: activeIndex == 0 ? 50 : 60,
          showTitle: true,
          titleStyle: AppStyles.styleRegular16
              .copyWith(color: activeIndex == 0 ? Colors.black : Colors.white),
          value: 40,
          color: const Color(0xFF208Bc7),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.1 : null,
          title: activeIndex == 1 ? 'Design product' : '25%',
          radius: activeIndex == 1 ? 50 : 60,
          showTitle: true,
          titleStyle: AppStyles.styleRegular16
              .copyWith(color: activeIndex == 1 ? Colors.black : Colors.white),
          value: 25,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          radius: activeIndex == 2 ? 50 : 60,
          showTitle: true,
          titleStyle: AppStyles.styleRegular16
              .copyWith(color: activeIndex == 2 ? Colors.black : Colors.white),
          value: 20,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.6 : null,
          title: activeIndex == 3 ? 'other' : '22%',
          radius: activeIndex == 3 ? 50 : 60,
          showTitle: true,
          titleStyle: AppStyles.styleRegular16
              .copyWith(color: activeIndex == 3 ? Colors.black : Colors.white),
          value: 22,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
