import 'package:flutter/material.dart';
class SearchCard extends StatelessWidget {
  const SearchCard({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,
      vertical: 10,),
      child: Container(
        height: 60,
        width: 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(102, 95, 214, 1),
          borderRadius: BorderRadius.circular(20),

        ),
        child: ListTile(
          leading:IconButton(onPressed: (){},
              icon: Icon(Icons.arrow_drop_down_sharp,
                color: Color.fromRGBO(253, 115, 0, 1),)),

         title:  Text(text,style: TextStyle(color: Colors.white,
        fontFamily: 'RedHatDisplay-Regular',
        ),)

        ),
      ),
    );
  }
}
