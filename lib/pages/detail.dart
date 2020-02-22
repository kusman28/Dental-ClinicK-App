import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dashboard.dart';

class Detail extends StatefulWidget {
  List list;
  int index;
  Detail({this.index,this.list});
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  void deleteData() {
    int id;
    var url = "http://192.168.1.11/api/patient/$id";
    http.post(url, body: {
      'id': widget.list[widget.index]['id']
    });

  }

  void Confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text("Are you sure you want to delete '${widget.list[widget.index]['fullname']}'"),
      actions: <Widget>[
        new RaisedButton(
          child: new Text('Ok Deleted', style: new TextStyle(color: Colors.black),),
          color: Colors.red,
          onPressed: () {
            Navigator.of(context).push(
              new MaterialPageRoute(
                builder: (BuildContext context) => new Dashboard(),
              )
            );
            
          },
        ),
        new RaisedButton(
          child: new Text('Cancel', style: new TextStyle(color: Colors.black),),
          color: Colors.green,
          onPressed: () => Navigator.pop(context),
        )
      ],
    );
    showDialog(context: context, child: alertDialog);
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}