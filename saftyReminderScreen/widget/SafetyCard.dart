import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ginko/Constants.dart';
class SafetyCard extends StatefulWidget {
  final Color color;
  final String text;
  const SafetyCard({Key? key, required this.color, required this.text}) : super(key: key);

  @override
  State<SafetyCard> createState() => _SafetyCardState();
}

class _SafetyCardState extends State<SafetyCard> {
 bool value= false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Checkbox(value: value,
              shape: CircleBorder(),
              activeColor: widget.color,
              onChanged: (value){
            setState(() {
              this.value = value!;
            });
          }),

          Container(
            height:90 ,
            width:250 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: widget.color,
            ),
            child: ListTile(
              subtitle:Text(widget.text,style: TextStyle(
                color: PrimaryColor,
                fontFamily: "RedHatDisplay-Bold",
              ),) ,
              trailing:SvgPicture.asset('assets/images/edit.svg') ,
            ),
          ),
        ],
      ),
    );
  }
}
