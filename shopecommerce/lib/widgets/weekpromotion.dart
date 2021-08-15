import 'package:flutter/material.dart';
import 'package:shopecommerce/models/promitions.dart';

class WeekPromotion extends StatelessWidget {

  List<Promition>promitionList = [
    Promition(name: "ROG STRIX B550-A GAMING", image: "9.png"),
    Promition(name: "TUF GAMING X570-PLUS", image: "10.png"),
    Promition(name: "ROG STRIX B550-F GAMING", image: "11.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: promitionList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.all(2),
              child: GestureDetector(
                onTap: (){
                },
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/${promitionList[index].image}", height: 222, width: 180,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(promitionList[index].name,
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black,), ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),);
          }),
    );
  }
}
