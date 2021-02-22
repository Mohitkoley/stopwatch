import 'package:flutter/material.dart';

class TimeDisplay extends StatelessWidget{

  TimeDisplay({Key key,Duration this.duration,Color this.color,this.onClear}) : super(key: key);

  Duration duration = Duration();
  Color color =Colors.green;
  final ValueChanged<Duration> onClear;

  void _onClicked(){
    onClear(duration);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.all(5.0),
        child: Text(duration.toString(),style: TextStyle(color: color,fontSize: 32.0),),
        ),
        IconButton(icon: Icon(Icons.clear), onPressed: _onClicked)

      ],
    );
  }

}