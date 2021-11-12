import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote? quot;          // follow "quot" name
  QuoteCard({this.quot});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quot!.text.toString(),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quot!.author.toString(),
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}