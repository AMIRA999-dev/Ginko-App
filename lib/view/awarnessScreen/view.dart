import 'package:flutter/material.dart';
import 'package:ginko/view/awarnessScreen/components/Search.dart';
import 'package:ginko/view/awarnessScreen/components/cards.dart';
import 'package:ginko/view/awarnessScreen/widget/searchCard.dart';
class awarnessView extends StatelessWidget {
  const awarnessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(243, 244, 246, 1),
        leading: BackButton(
          onPressed: (){},
          color: Colors.black,
        ),
      ),
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
      body: Column(
        children: [

          awarnessSearch(),
         Expanded(child: awarnessCard()),

        ],
      ),
    );
  }
}
