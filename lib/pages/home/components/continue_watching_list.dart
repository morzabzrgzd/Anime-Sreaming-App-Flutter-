import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class ContinueWatchingList extends StatelessWidget {
  const ContinueWatchingList({
    super.key,
    required this.time,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.h,
    required this.w, required this.onTap,
  });

  final String time;
  final String title;
  final String subTitle;
  final String image;
  final double h;
  final double w;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      // hoverColor: Colors.amber,
      // focusColor: Colors.amber,
      highlightColor: Colors.grey.shade700,
      // hoverColor: Colors.amber,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        // margin: const EdgeInsets.only(right: 20),
        width: h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: h,
                  height: w,
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
                Container(
                  padding: const EdgeInsets.all(8),
                  width: h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        time,
                        style: const TextStyle(
                          color: AppColors.text,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          CupertinoIcons.xmark,
                          color: Colors.white,
                          size: 21,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
