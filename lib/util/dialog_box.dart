// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSaved;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSaved,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add new task...'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Save', color: 'blue', onPressed: onSaved),
                SizedBox(
                  width: 8,
                ),
                MyButton(text: 'Cancel', color: 'grey', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
