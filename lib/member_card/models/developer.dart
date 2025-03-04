class Developer {
  final String name;
  final String imageUrl;
  final String role;
  final String description;
  final List<String> skills;
  final Map<String, String> links;

  Developer({
    required this.name,
    required this.imageUrl,
    required this.role,
    required this.description,
    required this.skills,
    required this.links,
  });
}

final developer = Developer(
  name: '이인혁',
  imageUrl: 'assets/images/inhyuk_a.png',
  role: '1조 발표',
  description: '''
    지금까지 1조의 발표였습니다.
    팀원소개 앱개발을 한 이인혁이었습니다.
    경청해주셔서 감사합니다 🙇‍♂️
    ''',
  skills: [
    'Flutter & Dart',
    'Clean Architecture',
    'UI/UX Design',
    'Git & GitHub',
  ],
  links: {
    'GitHub': 'github.com/hippieperm',
    'Velog': 'velog.io/@hippieperm',
    'Email': 'xoxockstar@gmail.com',
  },
);
