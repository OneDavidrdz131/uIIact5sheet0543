import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "material app",
      home: Scaffold(
          appBar: AppBar(
            title: const Text("buttom sheet"),
          ),
          body: const ShowSheet()),
    );
  }
}

class ShowSheet extends StatelessWidget {
  const ShowSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading:
              const Icon(Icons.android_outlined, size: 40, color: Colors.green),
          title: const Text("Ver mas "),
          subtitle: const Text("Click para ver mas "),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            _mysheet(context);
          },
        ),
      ],
    );
  }

  _mysheet(BuildContext context) {
    List myList = List.generate(50, (i) => i);
    showModalBottomSheet(
        barrierColor: Colors.black54,
        backgroundColor: Colors.white,
        isDismissible: false,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(32))),
        context: context,
        builder: (context) {
          return SizedBox(
            height: 550,
            child: ListView.builder(
              itemCount: myList.length,
              itemBuilder: (_, i) => ListTile(
                title: Text(myList[i].toString()),
              ),
            ),
          );
        });
  }
}
