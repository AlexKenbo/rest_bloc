import 'package:flutter/material.dart';

class InProgressPage extends StatelessWidget {
  const InProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.fromLTRB(12, 6, 12, 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.yellow,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ID: 1234'),
              SizedBox(height: 8),
              Text(
                  'Здесь будет очень очень очень очень очень очень очень  долгое описание'),
            ],
          ),
        );
      },
    );
  }
}
