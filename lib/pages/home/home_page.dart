import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/custom_title.dart';
import '../../constants/app_colors.dart';
import 'components/continue_watching_list.dart';
import 'components/home_top_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeTopHeader(),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTitle(
                    title: 'Continue watching',
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 14),
                    child: Row(
                      children: List.generate(
                        4,
                        (index) => ContinueWatchingList(
                          h: 270,
                          onTap: () {},
                          w: 145,
                          image:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxXGyNF_m1pgSLX03BwmXp_hGbq-pWa8u9bA&usqp=CAU',
                          time: '24 min',
                          subTitle: '4 Season, Episode 1',
                          title:
                              "JoJo's Bizarre Adventure: Diamond Is Unbreakable",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const CustomTitle(
                    title: 'Top 10 this month',
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 14),
                    child: Row(
                      children: List.generate(
                        3,
                        (index) => const CustomListView(
                          image:
                              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c2408933-d040-46d2-bcdf-bf3c01866e44/dfzed7f-cfa05a83-2465-4b14-8ccd-2b6883384730.png/v1/fit/w_375,h_498,q_70,strp/untitled_by_mohammedalsh_dfzed7f-375w.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjU2MCIsInBhdGgiOiJcL2ZcL2MyNDA4OTMzLWQwNDAtNDZkMi1iY2RmLWJmM2MwMTg2NmU0NFwvZGZ6ZWQ3Zi1jZmEwNWE4My0yNDY1LTRiMTQtOGNjZC0yYjY4ODMzODQ3MzAucG5nIiwid2lkdGgiOiI8PTE5MjgifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.gx1I3tGaT1CkeC6bKI4accINfOFn35wDa7HwO2ClBdw',
                          title: 'Chainsaw man',
                          subTitle: 'Action Demons',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const CustomTitle(
                    title: 'Recommend',
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 14),
                    child: Row(
                      children: List.generate(
                        5,
                        (index) => const CustomListView(
                          image:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_67Lbo2L77AFHVnyICXgW4iJcoorc3h_PMPwJIgEHeyiI01MQlOXVA6hq0FInpU_tl5o&usqp=CAU',
                          title: 'Rascal Does Not Dream of a Dreaming Girl',
                          subTitle: 'Comedy Romantic',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      highlightColor: Colors.grey.shade700,
      // hoverColor: Colors.amber,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: 185,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 185,
              height: 230,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    image,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: AppColors.text,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subTitle,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: AppColors.subTitle,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
