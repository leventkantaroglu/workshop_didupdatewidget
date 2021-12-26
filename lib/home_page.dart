import 'package:flutter/material.dart';
import 'package:workshop_widget_lifecycle/markets.dart';

import 'body_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Market market = Market.values.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("İndirimdekiler"),
                const Divider(),
                Expanded(
                  child: BodyWidget(market: market),
                ),
                /* TextButton(
                  onPressed: () {
                    setState(() {
                      market = Market.blueMarket;
                    });
                  },
                  child: Text(Market.blueMarket.title),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      market = Market.greenMarket;
                    });
                  },
                  child: Text(Market.greenMarket.title),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text("(Yenile)"),
                ), */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
