import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:win/widget/widget_avis.dart';
import 'package:intl/intl.dart';

FirebaseFirestore Nommm = FirebaseFirestore.instance;

class composentAvis extends StatelessWidget {
  composentAvis({super.key});
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      devant,
      Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(bottom: 10),
        color: Colors.grey.withOpacity(0.1),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(width: 0.3, color: Colors.black)),
                child: TextField(
                  controller: myController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Entrez vos Avis',
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.send_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  addItem();
                },
              ),
            ),
          ],
        ),
      ),
    ]));
  }

  void addItem() {
    try {
      var now = new DateTime.now();
      var hourAndMinutes = new DateFormat('HH:mm');
      Nommm.collection("Critique").add({
        "text": myController.text,
        "time": hourAndMinutes.format(now),
      }).then((value) {
        print(value.id);
        myController.clear();
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
