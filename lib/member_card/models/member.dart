class Member {
  final String name;
  final String imageUrl;
  final String description;
  final String role;

  Member({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.role,
  });
}

final List<Member> members = [
  Member(
    name: '유제형',
    imageUrl: 'assets/images/member1.jpg',
    description: '팀의 리더로서 프로젝트를 이끌고 있습니다. UI/UX 디자인 전문가입니다.',
    role: '팀 리더',
  ),
  Member(
    name: '이인혁',
    imageUrl: 'assets/images/in_hyuk.JPG',
    description: '''
👋 자기소개
• 자기소개 앱 개발을 맡은 플러터 개발자 이인혁입니다.
• 00년생, 새로운 기술에 관심이 많습니다!
• 사용자 경험을 중요하게 생각하는 개발자입니다!

💻 개발 스킬
• Flutter & Dart
• Clean Architecture
• UI/UX 디자인
• Git & GitHub

🎯 주요 프로젝트
• 팀 소개 앱 개발
• 포트폴리오 웹사이트 제작
• 개인 프로젝트 다수 진행 중

✨ 취미 생활
• 전시회 관람
• 음악 감상
• POSCA로 아트 작업

🔗 개발자 채널
• 𝗚𝗶𝘁𝗛𝘂𝗯  ⟶  github.com/hippieperm
• 𝗕𝗹𝗼𝗴    ⟶  velog.io/@hippieperm
• 𝗘𝗺𝗮𝗶𝗹   ⟶  xoxockstar@gmail.com
'''
        .trimLeft(),
    role: '팀원',
  ),
  Member(
    name: '김기현',
    imageUrl: 'assets/images/member3.jpg',
    description: '''
💁🏻‍♂️자기소개
• 게임 개발로 개발을 시작했어요
• 웹 개발 경험도 있어요
• 개인적으로 C++과 JavaScript언어를 좋아합니다.
• MBTI는 ISTJ에요

🎮 취미
• 게임 하는 것을 좋아해요
• OTT 서비스나 Youtube보는 것도 좋아합니다.

💻 개발 스킬
• 사용해본 언어는 Java, JavaScript, C++, SQL, Html, Css 등 이 있어요
• 웹 개발 관련 으로는 Spring, Vue
• 게임 개발 관련으로는 Unity, DirectX (안한지 오래되서 다 까먹었을 것 같아요)

😁 하고 싶은 말
• 같이 팀이 된다면 재밌는 앱을 만들면서 재밌는 팀 작업 잘 해봐요.
• 잘 부탁드립니다!
'''
        .trimLeft(),
    role: '팀원',
  ),
  Member(
    name: '김영우',
    imageUrl: 'assets/images/member4.jpg',
    description: '모바일 앱 개발 전문가로, 크로스 플랫폼 개발을 담당합니다.',
    role: '팀원',
  ),
  Member(
    name: '안정희',
    imageUrl: 'assets/images/member5.jpg',
    description: 'QA 엔지니어로서 제품의 품질 향상에 기여하고 있습니다.',
    role: '팀원',
  ),
];
