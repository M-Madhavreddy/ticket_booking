import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECEFF1),
        body: ListView(
      children: [
        Container(
          padding: const EdgeInsets.only(left :15 , right :15),
          child: Column(
            children: [
              Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning",
                          style: TextStyle(color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                      Gap(5),
                      Text("Book Tickets",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold))
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("assests/images/image1.jpg"), )
                    ),
                  ),
                ],
              ),
            Gap(30),
              Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                       Icon(FluentSystemIcons.ic_fluent_search_regular,color: Colors.grey),
                          Gap(5),
                            Text("Search", style: TextStyle(color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              ),
              Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming Flights",style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500)),
                  InkWell(
                    onTap: (){

                    },
                    child: Text("View all",style: TextStyle( color: Colors.grey,
                        fontSize: 15, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Gap(20),
              TicketView(),
            ],
          ),
        )
      ],
    ));
  }
}
