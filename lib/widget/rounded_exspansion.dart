import 'package:flutter/material.dart';

class RoundedExpansionCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const RoundedExpansionCard({Key key, this.children, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(
            title ?? '', style: TextStyle(color: Colors.black),
          ),
          tilePadding: EdgeInsets.zero,
          childrenPadding: EdgeInsets.only(bottom: 10),
          children: children ?? [],
          initiallyExpanded: true,
        ),
      ),
    );
  }
}
