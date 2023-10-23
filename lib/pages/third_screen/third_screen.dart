import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/pages/widgets/custom_chip.dart';
import 'package:quiz/pages/widgets/row_title.dart';

class ThirdScreen extends StatefulWidget{
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/care_icon.png"),
              const SizedBox(width: 8),
              Text(
                "AliceCare",
                style: GoogleFonts.milonga(
                  fontSize: 24,
                )
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xffD0D5DD)
              ),
            ),
            child: Row(
              children: [
                const SizedBox(width: 10),
                const Icon(
                    Icons.search,
                  color: Color(0xff667085),
                ),
                const SizedBox(width: 6),
                Text(
                  "Articles, Video, Audio and More,...",
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color:  const Color(0xff667085),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CustomFilterChip(
                    label: "Discover",
                ),
                SizedBox(width: 8),
                CustomFilterChip(
                  label: "News",
                ),
                SizedBox(width: 8),
                CustomFilterChip(
                  label: "Most Viewed",
                ),
                SizedBox(width: 8),
                CustomFilterChip(
                  label: "Saved",
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        const RowTitle(title: "Hot topics", titleColor: Color(0xff5925DC), endTitle: "See All"),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.asset("assets/images/topics.png")),
              AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.asset("assets/images/topics2.png")),
              AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.asset("assets/images/topics.png")),
              AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.asset("assets/images/topics2.png")),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "Get Tips",
            style: theme.textTheme.bodyLarge,
          ),
        ),
        Image.asset("assets/images/tips.png"),
        const RowTitle(title: "Cycle Phases and Period", titleColor: Color(0xff5925DC), endTitle: "See All"),
      ],
    );
  }
}