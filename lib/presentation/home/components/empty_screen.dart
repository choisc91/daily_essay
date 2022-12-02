import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.no_sim,
            color: Colors.grey,
            size: 48.0,
          ),
          SizedBox(height: 8.0),
          Text(
            'No data :(',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
