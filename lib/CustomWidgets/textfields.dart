import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFields extends StatelessWidget {
  const TextFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Fields"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            getSpacer(),
            Container(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: 'Design 1',
                ),
              ),
            ),
            getSpacer(),
            Container(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    hintText: 'Design 2',
                    labelText: 'Design 2'),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Design 3',
                    hintText: 'Design 3'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getSpacer() {
    return const SizedBox(
      height: 10,
    );
  }
}
