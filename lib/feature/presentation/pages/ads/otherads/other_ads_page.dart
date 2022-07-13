import 'package:flutter/material.dart';

class OtherAdsPage extends StatelessWidget {
  const OtherAdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News')),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Text('News'),
        ),
      ),
    );
  }
}
