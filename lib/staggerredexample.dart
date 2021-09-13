import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredExample extends StatelessWidget {

  List gridTile = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35",
  ];
  List listOfWidgets = ["Listone","Listtwo","Listthree","Listfour","ListFive","ListSix",
  ];

/**
 * in the following function, i am merging the gridTile and listOfWidgets
 * where element of listOfWidgets is inserted every 7'th place.
 * after that the list to solution is returned which we will
 * use in the StaggeredGridView.countBuilder. 
 */
  List driverFunction() {
    List solution = [];
    int j = 0;
    for (int i = 0; i < gridTile.length; i++) {
      if ((solution.length + 1) % 7 == 0) {
        solution.add(listOfWidgets[j]);
        solution.add(gridTile[i]);
        j++;
      } else {
        solution.add(gridTile[i]);
      }
    }
    return solution;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Staggered Example"),
        ),
        body: StaggeredGridView.countBuilder(
          shrinkWrap: true,
          crossAxisCount: 3,
          itemCount: driverFunction().length,
          itemBuilder: (context, index) => Card(
              color: (index + 1) % 7 == 0 ? Colors.greenAccent : Colors.amber,
              child: Center(
                  child: Text(
                driverFunction()[index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ))),
          staggeredTileBuilder: (index) => StaggeredTile.count(
            1,
            (index % 7 == 0) ? 2 : 1,
          ),
        ));
  }
}
