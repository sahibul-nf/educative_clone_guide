import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/course_controller.dart';
import '../themes/colors.dart';
import '../widgets/course_card.dart';
import '../widgets/course_list_loading.dart';
import 'course_detail_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final courseState = ref.watch(courseProvider);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/logo.svg',
              width: 24,
              color: MyColors.primary,
            ),
            const SizedBox(width: 5),
            Text(
              'educative',
              style: GoogleFonts.nunitoSans(
                color: MyColors.black,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.grey,
            onPressed: () {},
          ),
          IconButton(
            padding: const EdgeInsets.only(right: 10),
            icon: const Icon(Icons.account_circle),
            color: Colors.grey,
            iconSize: 30,
            onPressed: () {},
          ),
        ],
      ),
      body: courseState.when(
        data: (courses) {
          return ListView.separated(
            itemCount: courses.length,
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
              bottom: 30,
            ),
            itemBuilder: (context, index) {
              return CourseCard(
                courses[index],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseDetailPage(
                        course: courses[index],
                      ),
                    ),
                  );
                },
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            },
          );
        },
        loading: () => const CourseListLoading(),
        error: (error, stack) => Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}
