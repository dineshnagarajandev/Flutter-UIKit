import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          TextButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey[200]!)),
              onPressed: () {
                print("Text Button Tapped");
              },
              child: const Text("Text Button")),
          ElevatedButton(
              onPressed: () {
                print("Elevated button tapped.");
              },
              child: const Text("Elevated button")),
          OutlinedButton(
              onPressed: () {
                print("Outlined button tapped");
              },
              child: const Text("Outlined button")),
          IconButton(
              onPressed: () {
                print("Icon Button tapped");
              },
              icon: const Icon(Icons.notification_add)),
          Container(
              margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: InkWell(
                onTap: () {
                  print("Ink well design 1 tapped");
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Center(
                      child: Text(
                    "Design 1",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              )),
          getSpacer(),
          Container(
            margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: InkWell(
              onTap: () {
                print("Inkwell design 2 tapped");
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: Border.all(color: Colors.blue)),
                child: const Center(child: Text("Design 2")),
              ),
            ),
          ),
          getSpacer(),
          Container(
              margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: InkWell(
                onTap: () {
                  print("Ink well design 3 tapped");
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                      child: Text(
                    "Design 3",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              )),
          getSpacer(),
          Container(
            margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: InkWell(
              onTap: () {
                print("Inkwell design 4 tapped");
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    border: Border.all(color: Colors.blue)),
                child: const Center(child: Text("Design 4")),
              ),
            ),
          ),
          getSpacer(),
          Container(
            margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: InkWell(
              onTap: () {
                print("Design 5 tapped");
              },
              child: Container(
                width: 140,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Design 5",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
          getSpacer(),
          Container(
            margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: InkWell(
              splashFactory: NoSplash.splashFactory,
              onTap: () {
                print("Design 6 tapped");
              },
              child: Container(
                padding: const EdgeInsets.only(left: 50, right: 24),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Design 6",
                      style: TextStyle(color: Colors.white),
                    ),
                    const RotatedBox(
                      quarterTurns: 1,
                      child: Icon(
                        Icons.flight,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget getSpacer() {
    return const SizedBox(
      height: 10,
    );
  }
}
