import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';


class HomeTopHeader extends StatelessWidget {
  const HomeTopHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 12,
        left: 25,
        right: 25,
        bottom: 12,
      ),
      // height: 100,
      width: double.infinity,
      child: SafeArea(
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade800,
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEXPlxaYUPJbqXe1JYrQAG3Vk3cAJvesr9vQ&usqp=CAU',
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              'Hello, Kotevw',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.text,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primery.withOpacity(.1),
                    offset: const Offset(0, 5),
                    blurRadius: 20,
                  )
                ],
                shape: BoxShape.circle,
                color: const Color(0xff2D3240),
              ),
              child: const Icon(
                CupertinoIcons.bell,
                color: AppColors.primery,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
