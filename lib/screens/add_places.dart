import 'package:flutter/material.dart';

class AddPlaces extends StatelessWidget {
  const AddPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Place"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                maxLength: 50,
                decoration: InputDecoration(label: Text('Name')),
              ),
              ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.add), label: Text("Add Place"))
            ],
          ),
        ),
      ),
    );
  }
}
