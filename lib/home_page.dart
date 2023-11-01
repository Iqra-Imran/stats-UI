import 'package:flutter/material.dart';
import 'package:stats/reusable_container.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  // late TabController _tabController= TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white70,
          title: Text('Stats',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
          centerTitle: true,
        ),
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20,bottom: 8),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(25),
                ),
                child:TabBar(labelColor: Colors.white,unselectedLabelColor: Colors.black,indicator: BoxDecoration(
                    color: Colors.blueGrey,borderRadius: BorderRadius.circular(25)),
                    tabs: [
                      Tab(text: 'DAY'),
                      Tab(text: 'Week',),
                      Tab(text: 'Month',),
                    ]) ,
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                ReusableContainer(),
                ReusableContainer(),
                ReusableContainer(),

              ]),
            ),
          ],
        )
      ),
    );
  }
}
