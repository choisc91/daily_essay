import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: const [
          Icon(Icons.no_sim, color: Colors.grey),
          SizedBox(height: 8.0),
          Text('No data'),
        ],
      ),
    );
  }
}
