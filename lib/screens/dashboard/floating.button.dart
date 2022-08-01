import 'package:flutter/material.dart';


class FloatingButton extends StatefulWidget {


  const FloatingButton({Key? key}) : super(key: key);

  @override
  _FloatingButtonState createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  

  @override
  Widget build(BuildContext context) {
return SizedBox(
              width:108,
              child: PhysicalModel(
                color: Colors.white,
              elevation: 8,
              shadowColor: Colors.red,
              borderRadius: BorderRadius.circular(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    SizedBox(width: 8),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ),
                    SizedBox(width: 8),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 30.0
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}