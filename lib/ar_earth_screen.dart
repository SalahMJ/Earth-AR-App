import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';

class ArEarthScreen extends StatefulWidget {
  const ArEarthScreen({super.key});

  @override
  State <ArEarthScreen> createState() => _ArEarthScreenState();
}

class _ArEarthScreenState extends State<ArEarthScreen> {
  ArCoreController? augmentedRealityCoreController;

  augmentedRealityViewCreated(ArCoreController arCoreController){
    augmentedRealityCoreController = arCoreController;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AR Earth"
        ),
        centerTitle: true,
      ),
      body: ArCoreView(
        onArCoreViewCreated: augmentedRealityViewCreated,
      ),
    );
  }
}