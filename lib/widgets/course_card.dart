import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/course.dart';
import '../themes/colors.dart';
import '../themes/typography.dart';
import 'level_indicator.dart';

class CourseCard extends ConsumerStatefulWidget {
  const CourseCard(
    this.course, {
    super.key,
    required this.onPressed,
  });
  final Course course;
  final VoidCallback onPressed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CourseCardState();
}

class _CourseCardState extends ConsumerState<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
						// Course Thumbnail
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network(
                widget.course.imageUrl,
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
									// Course Title
                  Text(
                    widget.course.title,
                    style: MyTypography.titleMedium,
                  ),
                  const SizedBox(height: 10),
									// Course Author
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          widget.course.authorAvatarUrl,
                          height: 30,
                          width: 30,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'by ',
                        style: MyTypography.body,
                      ),
                      Text(
                        widget.course.authorName,
                        style: MyTypography.body,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
											// Course Level
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LevelIndicator(level: widget.course.level),
                            const SizedBox(height: 10),
                            Text(
                              widget.course.level,
                              style: MyTypography.bodySmall,
                            ),
                          ],
                        ),
                      ),
											// CTA Button - Get Started
                      OutlinedButton(
                        onPressed: widget.onPressed,
                        style: OutlinedButton.styleFrom(
                          foregroundColor: MyColors.primary,
                          side: const BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Get Started',
                              style: MyTypography.body,
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.arrow_forward_rounded,
                              size: 20,
                              color: MyColors.primary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}