import 'package:flutter/material.dart';
import 'package:your_places/models/place.dart';
import 'package:your_places/screens/add_places.dart';
import 'package:your_places/widgets/places_list.dart';

class Places extends StatelessWidget {
  const Places({super.key});

  

  @override
  Widget build(BuildContext context) {

    void addPlace(){
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const AddPlaces(),));
  
  }
    List<Place> places = [Place(title: "Test")];
    return Scaffold(
      appBar: AppBar(
        actions:  [
          IconButton(onPressed: (){ addPlace();}, icon: const Icon(Icons.add))
        ],
        title: const Text("Your Plaes"),
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) => PlacesList(title: places[index].title),
      ),
    );
  }
}
