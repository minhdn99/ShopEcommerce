import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';
import 'package:shopecommerce/widgets/Menu_lists.dart';
import 'package:shopecommerce/widgets/bottom_bar.dart';
import 'package:shopecommerce/widgets/carousel.dart';
import 'package:shopecommerce/widgets/flash_sale.dart';
import 'package:shopecommerce/widgets/recomended.dart';
import 'package:shopecommerce/widgets/weekpromotion.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.search_sharp, color: Colors.black54,),
                  Text("E-Commerce Shop", style: TextStyle(color: Colors.black12),),
                ],
              ),
            ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat, color: Colors.white,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(2, 4, 5, 3),
            child: Stack(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications, color: Colors.white,),
                  ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
          children: <Widget>[
            Carousel(),

            SizedBox(height: 5,),

            MenuList(),

            SizedBox(height: 5,),

            Padding(padding: EdgeInsets.all(0),
              child: Container(
                height: 10,
                width: MediaQuery.of(context ).size.width,
                decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                  ),
              ),
              ),

            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Week Promotion", style: TextStyle(fontSize: 25,
                  color: Colors.black54, fontWeight: FontWeight.w600),),
              ),

            WeekPromotion(),

            SizedBox(height: 10,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(0),
                  child: Container(
                    height: 10,
                    width: MediaQuery.of(context ).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("FLASH", style: TextStyle(fontSize: 35,
                          color: Colors.red, fontWeight: FontWeight.w600),),
                      Text("SALE ", style: TextStyle(fontSize: 35,
                          color: Colors.orangeAccent, fontWeight: FontWeight.w600),),
                    ],
                  ),
                  CustomTimer(
                    from: Duration(hours: 24),
                    to: Duration(hours: 0),
                    onBuildAction: CustomTimerAction.auto_start,
                    builder: (CustomTimerRemainingTime remaining) {
                      return Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("${remaining.hours}:${remaining.minutes}:${remaining.seconds}",
                        style: TextStyle(fontSize: 11, color: Colors.white),),
                      );
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 5,),

            FlashSale(),

            // SizedBox(height: 5,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(0),
                  child: Container(
                    height: 10,
                    width: MediaQuery.of(context ).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Recomended", style: TextStyle(fontSize: 25,
                  color: Colors.black54, fontWeight: FontWeight.w600),),
            ),

            SizedBox(height: 5,),

            Container(
              height: MediaQuery.of(context).size.height - 280,
              width: double.infinity,
              child: new TabBarView(
                controller: _tabController,
                children: [
                  Recomended(),
                  Recomended(),
                  Recomended(),
                ],
              ),
            ),

            SizedBox(height: 5,),


          ],
        ),


      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: Color(0xFF3D60E2),
      child: Icon(Icons.location_searching_outlined),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),

    );
  }
}
