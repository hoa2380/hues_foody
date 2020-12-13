import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hues_foody_app/resource/models/bar.dart';
import 'file:///E:/Flutter/hues_foody_app/lib/widget/chart/dot_widget.dart';


class BarChartWidget extends StatefulWidget {
  final List<Bar> bars;
  final List<String> bottomTitles;
  final bool showDot;
  final Color y1Color;
  final String y1Title;
  final Color y2Color;
  final String y2Title;
  final bool showGrid;
  final int gridStep;
  final bool divider;
  final double height;
  final double width;
  final double columnWidth;
  final String unit;

  const BarChartWidget(
      this.bars, {
        Key key,
        this.y1Color,
        this.y2Color,
        this.y1Title,
        this.y2Title,
        this.showDot = true,
        this.showGrid = false,
        this.gridStep = 0,
        this.divider = false,
        this.height = 140,
        this.width = double.infinity,
        this.columnWidth,
        this.bottomTitles,
        this.unit = '',
      }) : assert(bars != null);

  @override
  _BarChartWidgetState createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {
  List<BarChartGroupData> items;

  @override
  void initState() {
    items = <BarChartGroupData>[];
    for (var i = 0; i < widget.bars.length; i++) {
      items.add(makeGroupData(widget.bars[i]));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.height,
          width: double.infinity,
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceAround,
              titlesData: FlTitlesData(
                show: widget.bottomTitles == null ? false : true,
                bottomTitles: SideTitles(
                  showTitles: true,
                  getTextStyles: (value) => const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                  getTitles: (value) {
                    if (value <= widget.bottomTitles.length) {
                      return widget.bottomTitles[value.toInt()];
                    } else {
                      return '';
                    }
                  },
                ),
                leftTitles: SideTitles(
                    showTitles: widget.showGrid,
                    getTextStyles: (value) => TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                    checkToShowTitle: (min, max, side, interval, value) {
                      if (value % widget.gridStep == 0) {
                        return true;
                      } else {
                        return false;
                      }
                    }),
              ),
              gridData: FlGridData(
                  show: widget.showGrid,
                  checkToShowHorizontalLine: (value) {
                    if (value % widget.gridStep == 0) {
                      return true;
                    } else {
                      return false;
                    }
                  }),
              borderData: FlBorderData(
                show: widget.showGrid ? true : false,
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Colors.black26,
                    width: 0.5,
                  ),
                ),
              ),
              barTouchData: BarTouchData(
                touchTooltipData: BarTouchTooltipData(
                    tooltipBgColor: Colors.transparent,
                    fitInsideHorizontally: true,
                    fitInsideVertically: true,
                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                      return BarTooltipItem(
                        rod.y.toInt().toString() + ' ${widget.unit}',
                        TextStyle(
                          color: Colors.black,
                        ),
                      );
                    }),
              ),
              barGroups: items,
            ),
          ),
        ),
        widget.divider
            ? Divider(
          color: Colors.grey,
          endIndent: 40,
          thickness: 0.8,
          indent: 40,
        )
            : Container(),
        SizedBox(
          height: 4,
        ),
        widget.showDot
            ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DotWidget(
              text: widget.y1Title ?? '',
              color: widget.y1Color,
              padding: EdgeInsets.zero,
            ),
            DotWidget(
              text: widget.y2Title ?? '',
              color: widget.y2Color,
              padding: EdgeInsets.zero,
            ),
          ],
        )
            : SizedBox(),
      ],
    );
  }

  BarChartGroupData makeGroupData(Bar bar) {
    return BarChartGroupData(barsSpace: 2, x: bar.x, barRods: [
      BarChartRodData(
        y: bar.y1,
        colors: [widget.y1Color ?? Colors.green],
        width: widget.columnWidth,
      ),
      BarChartRodData(
        y: bar.y2,
        colors: [widget.y2Color ?? Colors.black26],
        width: widget.columnWidth,
      ),
    ]);
  }
}
