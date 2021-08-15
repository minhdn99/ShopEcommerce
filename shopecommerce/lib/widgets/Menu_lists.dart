import 'package:flutter/material.dart';
import 'package:shopecommerce/models/Cards.dart';

List<Cards> MenuListList = [
  Cards(name: "Processor", image: "1.png"),
  Cards(name: "Mother board", image: "2.png"),
  Cards(name: "Ram(Memory)", image: "3.png"),
  Cards(name: "Graphics Card", image: "4.png"),
  Cards(name: "Fans", image: "5.png"),
  Cards(name: "Storage", image: "6.png"),
  Cards(name: "CPU Cooler", image: "7.png"),
  Cards(name: "Power Supply", image: "8.png"),
];

class MenuList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: MenuListList.length,
        itemBuilder: (_, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Column(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(4,6),
                              blurRadius: 20
                          )
                        ],
                      ),
                      child: Padding(padding: EdgeInsets.all(4),
                        child: Image.asset("images/${MenuListList[index].image}", width: 25,),)
                  ),
                  SizedBox(height: 10,),
                  Text(MenuListList[index].name,style: TextStyle(fontSize: 14, color: Colors.black,), )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  }



