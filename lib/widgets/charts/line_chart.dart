import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/sales_analytics/line_chart/line_chart_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BlueLineChart extends StatefulWidget {
  final List<LineInputData> inputData;
  const BlueLineChart({super.key, required this.inputData});

  @override
  State<BlueLineChart> createState() => _BlueLineChartState();
}

class _BlueLineChartState extends State<BlueLineChart> {
  List<Color> gradientColors = [
    AppColors.primary,
    AppColors.white,
  ];

  bool showAvg = false;

  List<double> values = [];

  @override
  void initState() {
    super.initState();
    getValues();
  }

  getValues() {
    values = widget.inputData.map((e) => e.amount).toList();
    values.sort();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.3,
      child: LineChart(
        mainData(),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    TextStyle style =
        AppTextStyles.smallText.copyWith(color: const Color(0xFF615E83));
    Widget text = Text(
        widget.inputData[value.toInt()].label[0].toUpperCase() +
            widget.inputData[value.toInt()].label.substring(1),
        style: style);

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: const FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: AppColors.textColor,
          getTooltipItems: (touchedSpots) => List.generate(
            touchedSpots.length,
            (idx) => LineTooltipItem(
              "${nairaSymbol()}${touchedSpots[idx].y}",
              AppTextStyles.smallText,
            ),
          ),
        ),
      ),
      minX: 0,
      maxX: (widget.inputData.length - 1).toDouble(),
      minY: 0,
      maxY: values.last,
      lineBarsData: [
        LineChartBarData(
          color: AppColors.primary,
          spots: List.generate(
            widget.inputData.length,
            (index) => FlSpot(index.toDouble(), widget.inputData[index].amount),
          ),
          isCurved: true,
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradientColors
                  .map((color) => color.withOpacity(0.4))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
