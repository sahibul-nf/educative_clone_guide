import '../models/course.dart';
import '../models/lesson.dart';

final List<Course> courses = [
  Course(
    id: 'c1',
    title: 'Build educative.io clone with Flutter and Supabase',
    authorName: 'John Doe',
    authorAvatarUrl: 'https://i.pravatar.cc/150?img',
    authorJob: 'Senior Software Engineer',
    imageUrl:
        'https://www.educative.io/cdn-cgi/image/format=auto,width=950,quality=75/v2api/collection/10370001/6069685319630848/image/6492564120141824',
    description:
        'Learn how to build educative.io clone with Flutter and Supabase. This course is free and open source. You can find the source code on GitHub.',
    level: 'Beginner',
    duration: '2 weeks',
    price: 'Free',
    status: null,
  ),
  Course(
    id: 'c2',
    title: 'Django Web Development',
    authorName: 'Jane Smith',
    authorAvatarUrl: 'https://i.pravatar.cc/150?img',
    authorJob: 'Software Engineer',
    imageUrl:
        'https://www.educative.io/v2api/collection/10370001/5551624074297344/image/5668113229021184',
    description:
        'Learn how to build modern and responsive websites using HTML, CSS, and JavaScript, and popular web development frameworks like React and Angular.',
    level: 'Intermediate',
    duration: '4 weeks',
    price: 'Paid',
    status: null,
  ),
  Course(
    id: 'c3',
    title: 'Machine Learning with Python',
    authorName: 'Bob Johnson',
    authorAvatarUrl: 'https://i.pravatar.cc/150?img',
    authorJob: 'Data Scientist',
    imageUrl:
        'https://www.educative.io/v2api/collection/10370001/6205771374133248/image/4589857022672896',
    description:
        'Learn how to design beautiful and user-friendly mobile apps using Sketch, Figma, and other popular design tools.',
    level: 'Advanced',
    duration: '6 weeks',
    price: 'Paid',
    status: 'New',
  ),
];

// List of dummy lessons
final List<Lesson> lessons = [
  Lesson(
    title: 'Introduction',
    id: '',
    courseId: '',
    lessons: [
      LessonChild(
        id: '',
        title: 'Overview',
        content: '',
        isCompleted: false,
        lessonId: '',
        createdAt: DateTime.now(),
      ),
    ],
    showDetail: false,
  ),
  Lesson(
    title: 'Setting Up the Project',
    id: '',
    courseId: '',
    lessons: [
      LessonChild(
        id: '',
        title: 'Setting Up the Database',
        content: '',
        isCompleted: false,
        lessonId: '',
        createdAt: DateTime.now(),
      ),
    ],
    showDetail: false,
  ),
  Lesson(
    title: 'Building the Backend',
    id: '',
    courseId: '',
    lessons: [
      LessonChild(
        id: '',
        title: 'Building the API',
        content: '',
        isCompleted: false,
        lessonId: '',
        createdAt: DateTime.now(),
      ),
    ],
    showDetail: false,
  ),
  Lesson(
    title: 'Building the Frontend',
    id: '',
    courseId: '',
    lessons: [
      LessonChild(
        id: '',
        title: 'Building the UI',
        content: '',
        isCompleted: false,
        lessonId: '',
        createdAt: DateTime.now(),
      ),
    ],
    showDetail: false,
  ),
];

// List of dummy lesson childs
final List<LessonChild> lessonsContents = [
  LessonChild(
    id: '',
    title: 'Introduction',
    content: 'assets/lessons/introduction.md',
    isCompleted: false,
    lessonId: '',
    createdAt: DateTime.now(),
  ),
  LessonChild(
    id: '',
    title: 'Installing Flutter',
    content: 'assets/lessons/install-flutter-and-setup-vscode.md',
    isCompleted: false,
    lessonId: '',
    createdAt: DateTime.now(),
  ),
  LessonChild(
    id: '',
    title: 'Installing Supabase',
    content: 'assets/lessons/setting-up-supabase.md',
    isCompleted: false,
    lessonId: '',
    createdAt: DateTime.now(),
  ),
  LessonChild(
    id: '',
    title: 'Setting Up the Database',
    content: 'assets/lessons/setting-up-the-flutter-project-and-connect-to-the-supabase-api.md',
    isCompleted: false,
    lessonId: '',
    createdAt: DateTime.now(),
  ),
];
