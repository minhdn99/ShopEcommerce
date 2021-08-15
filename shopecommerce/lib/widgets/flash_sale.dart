import 'package:flutter/material.dart';
import 'package:shopecommerce/models/sale.dart';

class FlashSale extends StatelessWidget {
  List<Sale> saleList = [
    Sale(
        name: "ROG STRIX B550-A GAMING",
        image: "9.png",
        price: 5.99,
        rating: 4.2,
        location: "An hoa 6, Khue Trung, Cam Le, Da Nang",
        available: "2/10"
    ),
    Sale(
        name: "TUF GAMING X570-PLUS",
        image: "10.png",
        price: 5.99,
        rating: 4.2,
        location: "An hoa 6, Khue Trung, Cam Le, Da Nang",
        available: "2/10"
    ),
    Sale(
        name: "ROG STRIX B550-F GAMING",
        image: "11.png",
        price: 5.99,
        rating: 4.2,
        location: "An hoa 6, Khue Trung, Cam Le, Da Nang",
        available: "2/10"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: saleList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(20, 80, 20, 80),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Color(0xFFA1C8EF),
                      offset: Offset(30, 5),
                      // blurRadius: 30,
                      spreadRadius: 70,
                    )
                  ]),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/${saleList[index].image}",
                        height: 200,
                        width: 180,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,2,0,2),
                            child: Text(
                              saleList[index].name,
                              style: TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10,2,0,2),
                                child: Text(
                                  saleList[index].rating.toString(),
                                  style:
                                      TextStyle(fontSize: 14, color: Colors.black),
                                ), //chuyen sang string
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 16,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,2,0,2),
                            child: Row(
                              children: [
                                Text(
                                  "\$${saleList[index].price}",
                                  style: TextStyle(
                                    fontSize: 14, decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  "\$${saleList[index].price}",
                                  style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600,)
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,2,0,2),
                            child: Text("${saleList[index].location}", style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,2,0,2),
                            child: Text("${saleList[index].available}", style: TextStyle(
                                fontSize: 14, ),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
