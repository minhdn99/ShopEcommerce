import 'package:flutter/material.dart';
import 'package:shopecommerce/models/recomend.dart';

class Recomended extends StatelessWidget {

  Recomend recomend1 = new Recomend(
      name: "ROG STRIX B550-A GAMING",
      image: "images/9.png",
      price: 5.99,
      rating: 4.2,
      available: "932 Sale"
  );
  Recomend recomend2 = new Recomend(
      name: "ROG STRIX B550-A GAMING",
      image: "images/9.png",
      price: 5.99,
      rating: 4.2,
      available: "932 Sale"
  );
  Recomend recomend3 = new Recomend(
      name: "ROG STRIX B550-A GAMING",
      image: "images/9.png",
      price: 5.99,
      rating: 4.2,
      available: "932 Sale"
  );
  Recomend recomend4 = new Recomend(
      name: "ROG STRIX B550-A GAMING",
      image: "images/9.png",
      price: 5.99,
      rating: 4.2,
      available: "932 Sale"
  );
  Recomend recomend5 = new Recomend(
      name: "ROG STRIX B550-A GAMING",
      image: "images/9.png",
      price: 5.99,
      rating: 4.2,
      available: "932 Sale"
  );
  Recomend recomend6 = new Recomend(
      name: "ROG STRIX B550-A GAMING",
      image: "images/9.png",
      price: 5.99,
      rating: 4.2,
      available: "932 Sale"
  );

  @override
  Widget build(BuildContext context) {
    List<Recomend> recomendList = [recomend1,recomend2,recomend3,recomend4,recomend5,recomend6];
    return Container(
        child: GridView.builder(
          padding: const EdgeInsets.all(8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            mainAxisExtent: 250,
          ),
          itemCount: recomendList.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xDB0909E0),
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Image.asset(recomendList[index].image, width: 200,),

                  SizedBox(height: 10,),

                  Text(recomendList[index].name,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 11, fontWeight: FontWeight.w600),),
                  SizedBox(height: 5,),

                  Padding(
                    padding: const EdgeInsets.only(right: 110),
                    child: Text("\$${recomendList[index].price.toString()}",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 11, fontWeight: FontWeight.w600),),
                  ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(13,2,13,2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("${recomendList[index].rating}",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 11, fontWeight: FontWeight.w600),),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 16,
                            ),
                          ],
                        ),
                        Text(recomendList[index].available,
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 11, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),

                ],
              ),
            );
          },
          // children: recomendList.map((data) {
          //   return
          // }).toList()
        ),
    );
  }
}
