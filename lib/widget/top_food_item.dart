import 'package:flutter/material.dart';

class TopFoodItem extends StatelessWidget {
  final bool isFirst;
  final List<Widget> children;
  final String leading;
  final String title;
  final String trailing;
  final String trailingSub;

  TopFoodItem({
    Key key,
    this.children,
    this.title,
    this.trailing,
    this.trailingSub,
    this.leading,
    this.isFirst = false,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              height: 58,
              width: 58,
              decoration: BoxDecoration(
                color: isFirst ? Colors.red : Colors.grey,
                borderRadius:
                BorderRadius.horizontal(left: Radius.circular(10)),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  leading ?? '0',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isFirst ? 35 : 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: ExpansionTile(
                title: Text(
                  title ?? 'null',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      trailing ?? '',
                      style: TextStyle(
                        color: isFirst ? Colors.red : Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      trailingSub ?? 'Lượt đặt',
                      style: TextStyle(color: Colors.black.withOpacity(0.7)),
                    ),
                  ],
                ),
                backgroundColor: Colors.transparent,
                childrenPadding: EdgeInsets.only(bottom: 10),
                children: children ?? [SizedBox()],
                initiallyExpanded: isFirst,
                onExpansionChanged: (value) {

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}