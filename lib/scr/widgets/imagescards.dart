import 'package:flutter/material.dart';
import 'package:bookingapp/scr/models/places.dart';
import 'imagecard.dart';

class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
  List<Place> places = [
    Place(place: 'Manali', image: 'manali.jpg', days: 7),
    Place(place: 'Ooty', image: 'ooty.jpg', days: 4),
    Place(place: 'Australia', image: 'aus.jpg', days: 8),
    Place(place: 'Bali', image: 'bali.jpg', days: 8),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: places.length,
            itemBuilder: (_, index) {
              return ImageCard(
                place: places[index],
                name: places[index].place,
                days: places[index].days,
                picture: places[index].image,
              );
            }
            )
    );
  }
}