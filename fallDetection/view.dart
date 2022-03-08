import 'package:flutter/material.dart';
import 'package:ginko/Constants.dart';
class FallDetectionView extends StatelessWidget {
  const FallDetectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(243, 244, 246, 1),
        leading: BackButton(
          onPressed: (){},
          color: PrimaryColor,
        ),
      ),

    );
  }
}
