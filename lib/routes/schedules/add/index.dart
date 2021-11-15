import 'package:flutter/material.dart';

class AddSchedulesView extends StatefulWidget {
  const AddSchedulesView({Key? key}) : super(key: key);

  @override
  _AddSchedulesViewState createState() => _AddSchedulesViewState();
}

class _AddSchedulesViewState extends State<AddSchedulesView> {
  final TextEditingController _drugNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Add Drug',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'SOS',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Add your new drug here so you won’t miss it',
                  style: TextStyle(
                      color: Color(0xFF9B287B), fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                      onChanged: (text) {
                      },
                      controller: _drugNameController,
                      validator: (val) => val!.length > 4
                          ? null
                          : 'Name is too short',
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          labelText: 'Drug Name',
                          hintText: 'e.g Lansoprazole',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(color: Colors.black54))))),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'When should we remind you?',
                  style: TextStyle(
                      color: Color(0xFF9B287B), fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: OutlinedButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.add, color: Colors.black,),
                      Text('Add Time', style: TextStyle(color: Colors.black))
                    ],
                  ),
                  onPressed: () {
                  },
                ),
              )
            ],
          ),
        ));
  }
}
