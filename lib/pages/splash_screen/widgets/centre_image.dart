import 'package:flutter/cupertino.dart';

class CentreImage extends StatelessWidget {
  const CentreImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
            image: AssetImage("assets/images/uzum_logo.png"),
        )
      ),
    );
  }
}
