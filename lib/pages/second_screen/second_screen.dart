import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:quiz/pages/widgets/workout_container.dart';

class SecondScreen extends StatelessWidget{
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return DefaultTabController(
      length: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                      radius: 25,
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Jade",
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Ready to workout?",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: badges.Badge(
                    showBadge: true,
                    position: badges.BadgePosition.topEnd(top: -2, end: 1),
                    child: const ImageIcon(
                      AssetImage("assets/images/notification_Icon.png"),
                    ),
                  ),
                ),

              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
            child: Container(
              padding: const EdgeInsets.only(left: 12,top: 15),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF8F9FC),
              ),
              child: Row(
                children: [
                  const WorkoutContainer(
                      containerIcon: "assets/images/fav_icon.png",
                      containerTitle: "Heart Rate",
                      containerDesc: "81 BPM",
                  ),
                  Container(
                    width: 1,
                    height: 60,
                    color: const Color(0xffD9D9D9),
                  ),
                  const SizedBox(width: 5),
                  const WorkoutContainer(
                    containerIcon: "assets/images/list_Icon.png",
                    containerTitle: "To-do",
                    containerDesc: "32,5%",
                  ),
                  Container(
                    width: 1,
                    height: 60,
                    color: const Color(0xffD9D9D9),
                  ),
                  const SizedBox(width: 5),
                  const WorkoutContainer(
                    containerIcon: "assets/images/calo_icon.png",
                    containerTitle: "Calo",
                    containerDesc: "1000 Cal",
                  ),
                ],
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Workout Programs",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          TabBar(
            labelColor: const Color(0xFF363F72),
            unselectedLabelColor: const Color(0xff667085),
            tabs: [
              Tab(
                child: Text(
                  "All Type",
                  style: theme.textTheme.bodyMedium,
                ) ,
              ),
              Tab(
                child: Text(
                  "Full Body",
                  style: theme.textTheme.bodyMedium,
                ) ,
              ),
              Tab(
                child: Text(
                  "Upper",
                  style: theme.textTheme.bodyMedium,
                ) ,
              ),
              Tab(
                child: Text(
                  "Lower",
                  style: theme.textTheme.bodyMedium,
                ) ,
              ),
            ],
          ),
          Expanded(
             child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Image.asset("assets/images/tab1_pic.png"),
                  Image.asset("assets/images/tab2_pic.png"),
                  Image.asset("assets/images/tab1_pic.png"),
                  Image.asset("assets/images/tab2_pic.png"),
                ],
              ),
           ),
        ],
      ),
    );
  }

}