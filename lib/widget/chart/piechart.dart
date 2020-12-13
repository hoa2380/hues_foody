import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hues_foody_app/resource/models/pie.dart';

class PieChartWidget extends StatefulWidget{
  final List<Pie> pies;

  const PieChartWidget({Key key, this.pies}) : super(key: key);

  @override
  _PieChartWidgetState createState() => _PieChartWidgetState();

}

class _PieChartWidgetState extends State<PieChartWidget> {
  List<PieChartSectionData> _pies;
  @override
  void initState() {
    _pies = <PieChartSectionData>[];
    for( var i = 0; i < widget.pies.length; i++ ) {
      final pie = widget.pies[i];
      _pies.add(PieChartSectionData(
        color: pie.color,
        title: pie.title,
        value: pie.value,
        radius: 32,
        titleStyle: TextStyle(color: Colors.white),
      ));
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 140,
          width: 140,
          child: PieChart(
            PieChartData(
                borderData: FlBorderData(show: false),
                sections: _pies,
                sectionsSpace: 3),
          ),
        ),
      ],
    );
  }
}