import 'package:flutter/material.dart';
import 'package:flutter_ddd_learn/domain/domain.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final NotesFailure failure;
  const CriticalFailureDisplay({super.key, required this.failure});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              '😫',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              failure.maybeMap(
                  orElse: () => 'Unexpected Error. \nPlease, contact support',
                  insufficientPermissions: (_) => 'Insufficient permission'),
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Icon(Icons.email), Text('I NEED HELP')],
              ),
            )
          ],
        ),
      ),
    );
  }
}
