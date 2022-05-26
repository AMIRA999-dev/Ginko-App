import 'package:flutter/material.dart';
class awarnessSearch extends StatelessWidget {
  const awarnessSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column (
      children: [
        Text('Awareness',
          style: TextStyle(
            color: Color.fromRGBO(12, 4, 64, 1),
            fontSize: 20,
            fontFamily: 'RedHatDisplay-Bold'

          ),

        ),
Padding(
  padding: const EdgeInsets.symmetric(vertical: 20),
  child:   Container(
    height:40 ,
    width: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child:   TextFormField(

      decoration: InputDecoration(
        hintText: 'Do you have A question?',
        helperStyle: TextStyle(
          fontSize: 10,
          color: Color.fromRGBO(12, 4, 64, 0.5),
          fontFamily: 'RedHatDisplay-Italic',
        ),


        prefixIcon:Icon(Icons.search_sharp),

        border: OutlineInputBorder(

          borderRadius: BorderRadius.circular(20),
         // borderSide: BorderSide.none


        ),
       // disabledBorder: InputBorder.none,
       // enabledBorder: InputBorder.none,

        contentPadding: EdgeInsets.symmetric(vertical: 5),


  enabledBorder: InputBorder.none

      ),



    ),
  ),
)
      ],
    );
  }
}
