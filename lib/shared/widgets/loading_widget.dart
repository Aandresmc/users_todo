import 'package:flutter/material.dart';

class CustomLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Container(
      width: _size.width * 0.08,
      height: _size.width * 0.08,
      margin: EdgeInsets.all(_size.width * 0.12),
      child: CircularProgressIndicator(
        strokeWidth: _size.width * 0.01,
      ),
    );
  }
}
