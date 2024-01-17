import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  final String text;
  const TextDivider({
    required this.text,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
           Expanded(child: Divider(color: Colors.blueGrey.withOpacity(0.8),)),
          SizedBox(
            width: 50,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blueGrey.withOpacity(0.8),
                ),
              ),
            ),
          ),
          Expanded(child: Divider(color: Colors.blueGrey.withOpacity(0.8),)),
        ],
      ),
    );
  }
}