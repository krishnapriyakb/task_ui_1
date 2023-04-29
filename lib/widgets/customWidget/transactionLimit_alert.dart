import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_ui_1/Provider/progressProvider.dart';

class transLimit_box extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 100,
        width: 200,
        child: Column(
          children: [
            TextField(
              controller: _controller,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  int? newProgress = int.tryParse(_controller.text);
                  if (newProgress != null) {
                    Provider.of<progressProvider>(context, listen: false)
                        .changeProgress(newProgress);
                    Navigator.pop(context);
                  }
                },
                child: Text("Save"))
          ],
        ),
      ),
    );
  }
}
