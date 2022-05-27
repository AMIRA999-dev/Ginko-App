import 'package:flutter/material.dart';
import 'package:ginko/view/awarnessScreen/widget/searchCard.dart';
class awarnessCard extends StatelessWidget {
  const awarnessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (context,index)=>SizedBox(),
      itemBuilder: (context,index)=>SearchCard(text: 'how do you keep someone with alzheimers busy?'),

    );
  }
}
