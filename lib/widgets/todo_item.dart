import 'package:flutter/material.dart';
import 'package:poet/constants/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          print('Clicked on Todo Item');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.grey,
        leading: Icon(Icons.check_box,color: tdBlue,),
        title: Text('Check Mail', style: TextStyle(fontSize: 16, color:tdBlack, decoration: TextDecoration.lineThrough)
          ,),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),

          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print('Clicked on delete icon');
            },
          ),
        ),
      ),
    );
  }
}