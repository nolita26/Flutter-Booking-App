import 'package:flutter/material.dart';
import 'package:bookingapp/scr/widgets/iconcard.dart';
import 'package:bookingapp/scr/widgets/imagescards.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                    onPressed: (){},
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: (){}
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: '\t\t\t\t\t\t\t\t\t\t\t\t\tTravelCiti\n',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue[700],
                          ),
                      ),
                      TextSpan(
                          text: 'How would you like to travel?',
                      ),
                    ],
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue[300],
                        ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconCard(
                    iconData: Icons.flight,
                    text: 'Flight',
                  ),
                  IconCard(
                    iconData: Icons.train,
                    text: 'Train',
                  ),
                  IconCard(
                    iconData: Icons.directions_bus,
                    text: 'Bus',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text(
                      'Places to Visit in India',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                  child: Container(
                      child: ImageCards()
                  ),
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.home,
                          color: Colors.blue[700],
                          size: 30,
                        ),
                        onPressed: (){}
                        ),
                    IconButton(
                        icon: Icon(
                          Icons.person_outline,
                          color: Colors.blue[700],
                          size: 30,
                        ),
                        onPressed: (){}
                        ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}