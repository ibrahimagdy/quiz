import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:quiz/pages/widgets/exercise_widget.dart';
import 'package:quiz/pages/widgets/feature_widget.dart';
import 'package:quiz/pages/widgets/feeling_widget.dart';
import 'package:quiz/pages/widgets/row_title.dart';

class FirstScreen extends StatefulWidget{
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    List<Widget> itemFeatures = [
      const FeatureWidget(),
      const FeatureWidget(),
      const FeatureWidget(),
    ];
    return SingleChildScrollView(
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
                  const Image(
                      image: AssetImage(
                          "assets/images/logo.png"
                      ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Moody",
                    style: theme.textTheme.titleLarge,
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
          const SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Hello, Sara Rose",
              style: theme.textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "How are you feeling today ?",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeelingWidget(
                    image: "assets/images/love_icon.png",
                    text: "Love"
                ),
                FeelingWidget(
                    image: "assets/images/cool_icon.png",
                    text: "Cool"
                ),
                FeelingWidget(
                    image: "assets/images/happy_icon.png",
                    text: "Happy"
                ),
                FeelingWidget(
                    image: "assets/images/sad_icon.png",
                    text: "Sad"
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
           const RowTitle(title: "Feature", titleColor: Color(0xff027A48), endTitle: 'See More',),
          const SizedBox(height: 15),
          CarouselSlider(
              items: [
                for(int i = 0; i < itemFeatures.length; i++)
                  const FeatureWidget(),
              ],
              options: CarouselOptions(
                onPageChanged: (index,reason){
                  setState(() {
                    currentIndex = index;
                  });
                },
                autoPlay: true
              ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i = 0; i < itemFeatures.length; i++)
                Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: currentIndex == i
                        ? const Color(0xff98A2B3) 
                        : const Color(0xffD9D9D9),
                    shape: BoxShape.circle
                  ),
                ),
            ],
          ),
          const SizedBox(height: 20),
          const RowTitle(title: "Exercise", titleColor: Color(0xff027A48), endTitle: 'See More',),
          const SizedBox(height: 10),
          const Column(
            children: [
              Row(
                children: [
                  ExerciseWidget(
                      containerColor: Color(0xffF9F5FF),
                      iconImage: "assets/images/relaxation_icon.png",
                      containerTitle: "Relaxation",
                  ),
                  ExerciseWidget(
                      containerColor: Color(0xffFDF2FA),
                      iconImage: "assets/images/meditation_icon.png",
                      containerTitle: "Meditation",
                  ),
                ],
              ),
              Row(
                children: [
                  ExerciseWidget(
                    containerColor: Color(0xffFFFAF5),
                    iconImage: "assets/images/breathing_icon.png",
                    containerTitle: "Breathing",
                  ),
                  ExerciseWidget(
                      containerColor: Color(0xffF0F9FF),
                      iconImage: "assets/images/yoga_icon.png",
                      containerTitle: "Yoga",
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}