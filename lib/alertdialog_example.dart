import 'dart:io';

import 'package:flutter/material.dart';

class AlertDialogExample extends StatelessWidget {
  const AlertDialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.blue)),
      child: const Text(
        "AlertDialog Örneği",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("AlertDialog Örneği"),
                backgroundColor: Colors.blue,
                alignment: Alignment.center,
                elevation: 2,
                titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
                content: const Text(
                  "Uygulamadan çıkmak istiyor musunuz?",
                  style: TextStyle(color: Colors.white),
                ),
                actions: [
                  ButtonBar(
                    
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        child: const Text("Evet"),
                        onPressed: () {
                          exit(0);
                        },
                      ),
                      ElevatedButton(
                        child: const Text("Hayır"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  )
                ],
              );
            });
      },
    ));
  }
}
