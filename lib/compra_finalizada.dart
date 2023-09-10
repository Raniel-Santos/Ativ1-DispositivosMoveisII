import 'package:flutter/material.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(child: 
        Text('Compra Realizada!', style: TextStyle(fontSize: 24, color: Colors.green),),
      ),
    );
  }
}