class _Story {
  final String storyTitle;
  final String choice1;
  final String choice2;

  const _Story({
    required this.storyTitle,
    required this.choice1,
    required this.choice2,
  });
}

enum UserChoice { one, two }

class StoryBrain {
  static int _storyIndex = 0;

  static const storyData = <_Story>[
    _Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    _Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    _Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    _Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    _Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    _Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  static _Story get getStory => storyData[_storyIndex];

  static void nextStory({required UserChoice userChoice}) {
    switch (_storyIndex) {
      case 0:
        if (userChoice == UserChoice.one) {
          _storyIndex = 2;
        } else {
          _storyIndex = 1;
        }
        break;
      case 1:
        if (userChoice == UserChoice.one) {
          _storyIndex = 2;
        } else {
          _storyIndex = 3;
        }
        break;
      case 2:
        if (userChoice == UserChoice.one) {
          _storyIndex = 5;
        } else {
          _storyIndex = 4;
        }
        break;
      case 3:
      case 4:
      case 5:
        break;
    }
  }

  static void restart() {
    _storyIndex = 0;
  }

  static bool get buttonShouldBeVisible =>
      _storyIndex == 0 || _storyIndex == 1 || _storyIndex == 2;
}
