import 'package:flutter/material.dart';

class NameHeader extends StatelessWidget {
  const NameHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          const Text(
            'Selamat pagi,\nAurelia Vizal!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Expanded(child: Container(),),
          Padding(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                  radius: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network('https://images.unsplash.com/photo-1636754151798-d504b6903147?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80',
                        width: 60, height: 60, fit: BoxFit.cover),
                  )))
        ],
      ),
    );
  }
}
