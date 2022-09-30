import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  const Home({Key? key, }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: LayoutBuilder(builder: (BuildContext ctx, BoxConstraints constraints) {
              return Column(
                children: [

              ],
              );
            }
            ),
        ),
      ),
    );
  }

}
