import 'package:bloc_flutter_switch/Bloc.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Switch",
      home: _Switch(),
    ));

class _Switch extends StatefulWidget {
  @override
  __SwitchState createState() => __SwitchState();
}

class __SwitchState extends State<_Switch> {
 bool _switchValue=false;
  Bloc bloc=Bloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc"),
      ),

      body: Container(
        child: Center(
          child: StreamBuilder(
              stream: bloc.getSwitch,
              builder: (context,snapshot){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("$_switchValue"),
                Switch(
                value: snapshot.data??false,
                activeColor: Colors.green,
                onChanged: (b) {
                bloc.setSwitch(b);
                this._switchValue=b;
                },
                )
                    ],
                  );
          }),
        ),
      ),
    );
  }
}
