import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/round_conatainer.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout().getsize(context);
    return SizedBox(
      width: size.width,
      height: 75,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Stack(children: [
                  Center(
                    child: Transform.rotate(
                        angle: 1.5,
                        child: Icon(
                          Icons.local_airport_rounded,
                          color: Colors.white,
                        )),
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("NYC",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      Expanded(
                        child: Container(),
                      ),
                      RoundContainer(),
                      Expanded(
                        child: SizedBox(
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 8)
                                          .floor(),
                                      (index) => Text("-",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold))));
                            },
                          ),
                        ),
                      ),
                      RoundContainer(),
                      Expanded(
                        child: Container(),
                      ),
                      Text("LND",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),

                ]),
                Row(
                  children: [
                    Text("NewYork",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    Expanded(
                      child: Container(),
                    ),
                    Text("8H 30M",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Container(),
                    ),
                    Text("London",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
