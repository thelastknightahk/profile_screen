import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  FocusNode myFocusNode = new FocusNode();
  final maxLines = 5;
  String _dropDownValue;

  @override
  Widget build(BuildContext context) {
    var fullwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          actions: [
            Container(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        body: Container(
            color: Colors.blueAccent,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                      width: 80.0,
                      height: 80.0,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                                width: 60.0,
                                height: 60.0,
                                decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(30.0),
                                        bottomLeft: Radius.circular(30.0),
                                        bottomRight: Radius.circular(30.0)),
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage("assets/profile.jpg")))),
                          ),
                          Positioned(
                              top: 10.0,
                              left: 40.0,
                              child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 30.0, right: 20.0),
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                  ))),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  width: fullwidth / 1.3,
                  height: 40.0,
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    onChanged: (val) {},
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: "Name",
                      focusColor: Colors.white,
                      labelStyle: TextStyle(
                          color: myFocusNode.hasFocus
                              ? Colors.white
                              : Colors.white),
                      border: OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  width: fullwidth / 1.3,
                  height: 40.0,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    onChanged: (val) {},
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: "Phone Number",
                      focusColor: Colors.white,
                      labelStyle: TextStyle(
                          color: myFocusNode.hasFocus
                              ? Colors.white
                              : Colors.white),
                      border: OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(15.0)),
                    width: fullwidth / 1.3,
                    height: 40.0,
                    padding: EdgeInsets.all(5.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        iconEnabledColor: Colors.white,
                        hint: _dropDownValue == null
                            ? Text(
                                'Dropdown',
                                style: TextStyle(color: Colors.white),
                              )
                            : Text(
                                _dropDownValue,
                                style: TextStyle(color: Colors.white),
                              ),
                        isExpanded: true,
                        iconSize: 30.0,
                        style: TextStyle(
                            color: Colors.white, decorationColor: Colors.white),
                        items: ['One', 'Two', 'Three'].map(
                          (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(
                                val,
                                style: TextStyle(color: Colors.blue),
                              ),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          setState(
                            () {
                              _dropDownValue = val;
                            },
                          );
                        },
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  width: fullwidth / 1.3,
                  height: maxLines * 15.0,
                  child: TextField(
                    maxLines: maxLines,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    onChanged: (val) {},
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      labelText: "Full Address",
                      focusColor: Colors.white,
                      labelStyle: TextStyle(
                          color: myFocusNode.hasFocus
                              ? Colors.white
                              : Colors.white),
                      border: OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: fullwidth / 1.3,
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15.0)),
                  margin: EdgeInsets.only(top: 10.0),
                  child: Center(
                    child: Text("Save Updates",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            )));
  }
}
