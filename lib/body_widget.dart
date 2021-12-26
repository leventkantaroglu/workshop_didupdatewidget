import 'package:flutter/material.dart';
import 'markets.dart';
import 'service.dart';

class BodyWidget extends StatefulWidget {
  final Market market;
  const BodyWidget({
    required this.market,
    Key? key,
  }) : super(key: key);

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  List<String> items = [];

  @override
  void initState() {
    //print("BodyWidget: initState");
    //createItems();
    super.initState();
  }

  createItems() async {
    items = [];
    setState(() {});
    items = await marketItems(widget.market);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //print("BodyWidget: build");

    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                widget.market.title,
                style: TextStyle(color: widget.market.color),
              ),
              const Divider(),
              Expanded(
                child: ListView(
                  children: items
                      .map((item) => ListTile(
                            title: Text(item),
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
