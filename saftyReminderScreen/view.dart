import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ginko/view/saftyReminderScreen/components/SafetyReminderCard.dart';
import 'package:ginko/view/saftyReminderScreen/widget/SafetyCard.dart';

import '../../Constants.dart';
class SafetyReminderView extends StatelessWidget {
  const SafetyReminderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(243, 244, 246, 1),
        leading: BackButton(
          onPressed: (){},
          color: Color.fromRGBO(23, 20, 41, 1),
        ),
      ),
      backgroundColor: ThirdColor,
      body: Column(
        children: [
          Center(
            child: Text('Safety Reminder',
              style: TextStyle(fontFamily: 'RedHatDisplay-Bold',
                  fontSize: 20,
                  color: PrimaryColor),
            ),
          ),
          SizedBox(height: 18,),
          Expanded(
            child: Container(
              decoration:BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Colors.white,
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text('Todays Tasks',style: TextStyle(
                          color: PrimaryColor,
                          fontFamily: 'RedHatDisplay-Bold',
                          fontSize: 15
                        ),),
                      ],
                    ),
                  ),
                  SafetyCard(color: Color.fromRGBO(102, 95, 214, 0.6), text: 'Gas Stove Shut off '),
                  SafetyCard(color: Color.fromRGBO(253, 115, 0, 0.6), text: 'Electricity off '),
                  SafetyCard(color: Color.fromRGBO(84, 157, 241, 0.6), text: 'Close the door'),
                  SafetyCard(color: Color.fromRGBO(0, 202, 117, 0.6), text: 'Take the medicien'),
                  SafetyCard(color: Color.fromRGBO(102, 95, 214, 0.6), text: 'Added Task'),

                ],
              ),
            ),
          ),
        ],
      ),
bottomSheet:SafetyReminderCard(),
    );
  }
}
