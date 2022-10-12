import 'package:flutter/material.dart';
import 'package:todo/Components/Constants/constants.dart';
import 'package:todo/DataBase/Db_connection.dart';
import 'package:todo/Models/greeting_model.dart';
import '../Components/Widgets/greeting.dart';
import '../Components/Widgets/positioned_button.dart';
//import '../Components/Widgets/scroll_glow_behaviour.dart';
import '../Components/Widgets/task_list_card.dart';
import '../Models/task.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var greetingmodel = GreetingModel();
  DatabaseConnection _db = DatabaseConnection();

  // a function to set the color of the task list cards
  // based on id, if even set pink, odd is blue
  Color cardColor(AsyncSnapshot<List<Task>> snapshot, int index)
  {
    if(snapshot.data![index].id!.isEven)
      {
        return Kcolors.kPrimaryCardColor;
      }
    else
      return Kcolors.kSecondaryCardColor;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 32),
                      child: Greeting(
                        icon: greetingmodel.getGreetingIcon(),
                        greeting: greetingmodel.getGreetingText(),
                      ),
                    ),
                    Expanded(
                      child: FutureBuilder(
                        future: _db.getTask(),
                        builder: (context, AsyncSnapshot<List<Task>> snapshot) {
                          return ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                return TaskListCard(
                                    color: cardColor(snapshot, index),
                                    title: snapshot.data![index].title,
                                    desc: snapshot.data![index].desc);
                              });
                        },
                      ),
                    ),
                  ],
                ),
                PositionedButton(
                  icon: Icons.add,
                  onClick: () {
                    Navigator.pushNamed(context, '/second');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
