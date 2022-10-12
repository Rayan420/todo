import 'package:flutter/material.dart';
import 'package:todo/Components/Constants/constants.dart';
import 'package:todo/Models/greeting_model.dart';
import '../Components/Widgets/greeting.dart';
import '../Components/Widgets/positioned_button.dart';
import '../Components/Widgets/scroll_glow_behaviour.dart';
import '../Components/Widgets/task_list_card.dart';

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
                    child: ScrollConfiguration(
                      behavior: NoScrollGlowBehaviour(),
                      child: ListView(

                        scrollDirection: Axis.horizontal,
                        children: [
                          TaskListCard(
                            color: Kcolors.kPrimaryCardColor,
                            title: "My First Task",
                            desc:
                                "Hello User ! Welcome to TODO, this is your first task list that you can delete or edit and get started using the app",
                          ),
                          TaskListCard(
                            color: Kcolors.kSecondaryCardColor,
                            title: null,
                            desc: null,
                          ),
                          TaskListCard(
                            color: Kcolors.kPrimaryCardColor,
                            title: "My First Task",
                            desc:
                                "Hello User ! Welcome to TODO, this is your first task list that you can delete or edit and get started using the app",
                          ),
                          TaskListCard(
                            color: Kcolors.kSecondaryCardColor,
                            title: null,
                            desc: null,
                          ),
                          TaskListCard(
                            color: Kcolors.kPrimaryCardColor,
                            title: "My First Task",
                            desc:
                                "Hello User ! Welcome to TODO, this is your first task list that you can delete or edit and get started using the app",
                          ),
                          TaskListCard(
                            color: Kcolors.kSecondaryCardColor,
                            title: null,
                            desc: null,
                          ),
                          TaskListCard(
                            color: Kcolors.kPrimaryCardColor,
                            title: "My First Task",
                            desc:
                                "Hello User ! Welcome to TODO, this is your first task list that you can delete or edit and get started using the app",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              PositionedButton(icon: Icons.add, onClick: () {Navigator.pushNamed(context, '/second');  },),
            ],
          ),
        ),
      ),
    );
  }
}
