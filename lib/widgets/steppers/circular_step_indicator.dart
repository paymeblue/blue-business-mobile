import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CircularStepIndicator extends StatelessWidget {
  final double max;
  final double progress;
  const CircularStepIndicator(
      {super.key, required this.max, required this.progress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
              minimum: 0,
              maximum: max,
              showLabels: false,
              showTicks: false,
              axisLineStyle: const AxisLineStyle(
                thickness: 0.15,
                cornerStyle: CornerStyle.bothCurve,
                color: AppColors.midGrey,
                thicknessUnit: GaugeSizeUnit.factor,
              ),
              pointers: <GaugePointer>[
                RangePointer(
                  value: progress,
                  cornerStyle: CornerStyle.bothCurve,
                  color: AppColors.primary,
                  width: 0.15,
                  sizeUnit: GaugeSizeUnit.factor,
                )
              ],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                    positionFactor: 0.1,
                    angle: 90,
                    widget: Text(
                      '${progress.toStringAsFixed(0)} / ${max.toInt().toString()}',
                      style: const TextStyle(fontSize: 22),
                    ))
              ])
        ],
      ),
    );
  }
}
