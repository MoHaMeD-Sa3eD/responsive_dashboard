import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MiniDetailedIncomeChart extends StatefulWidget {
  const MiniDetailedIncomeChart({super.key});

  @override
  State<MiniDetailedIncomeChart> createState() => _MiniDetailedIncomeChartState();
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
          radius: activeIndex == 0 ? 50 : 60,
          showTitle: false,
          value: 40,
          color: const Color(0xFF208Bc7),
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 50 : 60,
          showTitle: false,
          value: 25,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 50 : 60,
          showTitle: false,
          value: 20,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 50 : 60,
          showTitle: false,
          value: 22,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}