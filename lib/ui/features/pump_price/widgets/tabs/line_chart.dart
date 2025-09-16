import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/sales_analytics/line_chart/line_chart_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PumpPriceLineChart extends StatefulWidget {
  final List<LineInputData> inputData;
  final bool isMonthly;
  const PumpPriceLineChart({
    super.key,
    required this.inputData,
    this.isMonthly = false,
  });

  @override
  State<PumpPriceLineChart> createState() => _PumpPriceLineChartState();
}

class _PumpPriceLineChartState extends State<PumpPriceLineChart> {
  List<Color> gradientColors = [
    const Color(0xFFBAF0D8),
    const Color(0xFFBDFFED),
    const Color(0xFFE9FBF4),
  ];

  bool showAvg = false;

  List<double> values = [];

  @override
  void initState() {
    super.initState();
    getValues();
  }

  void getValues() {
    values = widget.inputData.map((e) => e.amount).toList();
    values.sort();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 2.3, child: LineChart(mainData()));
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    TextStyle style = AppTextStyles.smallText.copyWith(
      color: const Color(0xFF615E83),
    );
    late Widget text = Text(
      widget.inputData[value.toInt()].label[0].toUpperCase() +
          widget.inputData[value.toInt()].label.substring(1),
      style: style,
    );

    return SideTitleWidget(axisSide: meta.axisSide, child: text);
  }

  LineChartData mainData() {
    NumberFormat format = NumberFormat.compactCurrency(symbol: nairaSymbol());
    return LineChartData(
      gridData: const FlGridData(show: false),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      ),
      borderData: FlBorderData(show: false),
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: AppColors.pumpPricebodyText,
          getTooltipItems: (touchedSpots) => List.generate(
            touchedSpots.length,
            (idx) => LineTooltipItem(
              format.format(touchedSpots[idx].y),
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
          color: AppColors.pumpPriceprimary,
          spots: List.generate(
            widget.inputData.length,
            (index) => FlSpot(index.toDouble(), widget.inputData[index].amount),
          ),
          isCurved: true,
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: const FlDotData(show: false),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradientColors
                  .map((color) => color.withOpacityValue(0.4))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
