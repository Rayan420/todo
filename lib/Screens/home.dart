import 'package:flutter/material.dart';
import 'package:todo/Components/Constants/constants.dart';
import 'package:todo/Components/Widgerts/greeting.dart';
import 'package:todo/Components/Widgerts/task_card.dart';
import 'package:todo/Models/greeting_model.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var greetingmodel = GreetingModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // adjust the greeting text and set dynamic functionality
                  Container(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Greeting(
                      icon: greetingmodel.getGreetingIcon(),
                      greeting: greetingmodel.getGreetingText(),
                    ),
                  ),
                  Container(
                    height: 270,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        TaskCard(
                          color: Kcolors.kPrimaryCardColor,
                          title: "My First Task",
                          desc:
                              "Hello User ! Welcome to TODO, this is your first task list that you can delete or edit and get started using the app",
                        ),
                        TaskCard(
                          color: Kcolors.kSecondaryCardColor,
                          title: null,
                          desc: null,
                        ),
                        TaskCard(
                          color: Kcolors.kPrimaryCardColor,
                          title: "My First Task",
                          desc:
                              "Hello User ! Welcome to TODO, this is your first task list that you can delete or edit and get started using the app",
                        ),
                        TaskCard(
                          color: Kcolors.kSecondaryCardColor,
                          title: null,
                          desc: null,
                        ),
                        TaskCard(
                          color: Kcolors.kPrimaryCardColor,
                          title: "My First Task",
                          desc:
                              "Hello User ! Welcome to TODO, this is your first task list that you can delete or edit and get started using the app",
                        ),
                        TaskCard(
                          color: Kcolors.kSecondaryCardColor,
                          title: null,
                          desc: null,
                        ),
                        TaskCard(
                          color: Kcolors.kPrimaryCardColor,
                          title: "My First Task",
                          desc:
                              "Hello User ! Welcome to TODO, this is your first task list that you can delete or edit and get started using the app",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Icon(
                    Icons.add,
                    color: Kcolors.kPrimaryTextColors,
                  ),
                  backgroundColor: Kcolors.kButtonColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
