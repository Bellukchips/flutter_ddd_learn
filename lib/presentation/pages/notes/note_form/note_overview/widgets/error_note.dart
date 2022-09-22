import 'package:flutter/material.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';

class ErrorNote extends StatelessWidget {
  final Note note;
  const ErrorNote({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).errorColor,
      child: Column(
        children: [
          Text(
            'Invalid Note, please, contact support',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            note.failureOption.fold(() => '', (a) => a.toString()),
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
