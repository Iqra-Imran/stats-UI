import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  
   ReusableContainer({super.key});
  List colors=[
  Colors.pinkAccent,
  Colors.purple,
  Colors.orangeAccent,
  Colors.lightBlueAccent,
  Colors.deepPurple,
  Colors.lightGreenAccent,  
  ];
  List<Text> header=[
    Text('Heart Rate  ',style: TextStyle(color: Colors.white),),
    Text('Sleep       ',style: TextStyle(color: Colors.white),),
    Text('Energy Burn ',style: TextStyle(color: Colors.white),),
    Text('Steps       ',style: TextStyle(color: Colors.white),),
    Text('Running     ',style: TextStyle(color: Colors.white),),
    Text('Cycling     ',style: TextStyle(color: Colors.white),),
  ];
   List<Icon> sideIcons=[
     Icon(Icons.favorite_rounded,color: Colors.white,size: 30,),
     Icon(Icons.alarm_rounded,color: Colors.white,size: 30,),
     Icon(Icons.local_fire_department_rounded,color: Colors.white,size: 30,),
     Icon(Icons.do_not_step,color: Colors.white,size: 30,),
     Icon(Icons.directions_boat,color: Colors.white,size: 30,),
     Icon(Icons.directions_bike_outlined,color: Colors.white,size: 30,)
   ];
  List<Text> centerTexts=[
     Text('124',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),),
     Text('8',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),),
     Text('583',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),),
     Text('16,741',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),),
     Text('5,3',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),),
     Text('12,5',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),),
   ];
  List<Text> bottomText=[
    Text('80-100\nHealthy',style: TextStyle(color: Colors.white),textAlign: TextAlign.right,),
    Text('Depp Sleep\n      5h 13m',style: TextStyle(color: Colors.white),),
    Text('Daily Goal\n   900kcal',style: TextStyle(color: Colors.white),),
    Text('      Daily Goal\n20,000 Steps',style: TextStyle(color: Colors.white),),
    Text('Daily Goal\n       10km',style: TextStyle(color: Colors.white),),
    Text('Daily Goal\n       20km',style: TextStyle(color: Colors.white),)
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 10,crossAxisSpacing: 10,childAspectRatio: 0.9),
          itemCount: centerTexts.length,
          itemBuilder: (context,index){
        return Container(
          decoration: BoxDecoration(color: colors[index],borderRadius: BorderRadius.circular(30)),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 25),
                    child: header[index],
                  ),
                  // SizedBox(width: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0,top: 14,right: 5),
                    child: sideIcons[index],
                  ),
                ],
              ),
              SizedBox(height:20,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Align(alignment: Alignment.centerLeft,child: centerTexts[index]),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(alignment: Alignment.bottomRight,child: bottomText[index]),
              ),
            ],
          ),
        );
          }),
    );
  }
}
