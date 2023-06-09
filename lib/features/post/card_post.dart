import 'package:flutter/material.dart';
import 'package:theming/features/post/post_widgets/reaction_row.dart';
import 'package:theming/features/presentation/constants/colors.dart';
import 'package:theming/features/presentation/constants/colors.dart';
import 'package:theming/features/presentation/constants/context_extension.dart';

import '../presentation/constants/text_styles.dart';

class ReusablePostCard extends StatelessWidget {
  const ReusablePostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.background,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.apple,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Apple',
                              style: context.primaryTextTheme.headline5!
                                  .copyWith(color: context.colorScheme.outline),
                            ),
                            const SizedBox(width: 14),
                            Text(
                              '9hr ago',
                              style: context.primaryTextTheme.labelMedium!
                                  .copyWith(color: context.colorScheme.surface),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          '@ Apple',
                          style: context.primaryTextTheme.labelMedium!
                              .copyWith(color: context.colorScheme.surface),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.more_horiz,
                  color: context.colorScheme.outline,
                )
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 36, right: 4),
              child: Column(
                children: [
                  Text(
                    'Introducing the advance triple camera iphone with latest features. Learn more for apple products..',
                    style: context.primaryTextTheme.subtitle1!
                        .copyWith(color: context.colorScheme.outline),
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 77, 48, 48),
                        ),
                        child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/system.jpg"),
                        ),
                      ),
                      Positioned(
                        top: 270,
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color.fromARGB(255, 47, 34, 34),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Icon(
                                Icons.graphic_eq,
                                color: Colors.white,
                              ),
                              Text(
                                '00:52',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 272,
                        left: 276,
                        child: Icon(
                          Icons.volume_down_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '53,034 views',
                        style: context.primaryTextTheme.subtitle2!.copyWith(
                          color: context.colorScheme.outline,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.all(1.0),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                                child: Image(
                                  image: AssetImage("assets/images/man.png"),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Divider(thickness: 1.5, color: context.colorScheme.surface),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReusableReactionRow(
                          Icons.mode_comment_outlined,
                          "42",
                          context.colorScheme.surface,
                          context.colorScheme.surface),
                      ReusableReactionRow(
                          Icons.turn_sharp_right_outlined,
                          '57',
                          context.colorScheme.surface,
                          context.colorScheme.surface),
                      ReusableReactionRow(
                        Icons.favorite,
                        '212',
                        context.colorScheme.error,
                        context.colorScheme.error,
                      ),
                      Icon(
                        Icons.share,
                        color: context.colorScheme.surface,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
