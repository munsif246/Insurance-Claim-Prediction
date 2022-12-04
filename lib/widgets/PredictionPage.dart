import 'package:flutter/material.dart';
import '../main.dart';


class PredictionPage extends StatefulWidget {
  static const routeName = 'prediction_page';
  const PredictionPage({super.key});

  @override
  State<PredictionPage> createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }
}
