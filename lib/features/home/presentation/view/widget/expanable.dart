import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

String loremIpsum = "loremIpsum lorem Ipsum lorem Ipsum";

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.purple,
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
              ScrollOnExpand(
                child: ExpandablePanel(
                  theme: ExpandableThemeData(
                      tapBodyToCollapse: true, tapBodyToExpand: true),
                  header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Expandable Panel",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      for (var _ in Iterable.generate(5))
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(loremIpsum,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                              style: TextStyle(color: Colors.black)),
                        ),
                    ],
                  ),
                  collapsed: Text(loremIpsum,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black)),
                  builder: (_, collapsed, expanded) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
