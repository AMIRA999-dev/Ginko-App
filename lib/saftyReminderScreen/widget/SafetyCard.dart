import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ginko/Constants.dart';
class SafetyCard extends StatefulWidget {

  final String text;
  const SafetyCard({Key? key, required this.text}) : super(key: key);

  @override
  State<SafetyCard> createState() => _SafetyCardState();
}

class _SafetyCardState extends State<SafetyCard> {
 bool value= false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        height:70 ,
        width:280 ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(102, 95, 214, 0.6),
        ),
        child:  CheckboxListTile(
            value: value,
            shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            activeColor: Colors.indigo,
            onChanged: (value){
              setState(() {
                this.value = value!;
              });
            },
            title:Text(widget.text,style: TextStyle(
              fontFamily:' RedHatDisplay-Bold',
              color: PrimaryColor,

            ),),
          secondary: SvgPicture.asset('assets/images/trash.svg'),
          contentPadding: EdgeInsets.symmetric(vertical: 10,
          horizontal: 20),
            ),
      ),
    );
  }
}
