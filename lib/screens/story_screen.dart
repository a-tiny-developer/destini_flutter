import 'package:flutter/material.dart';

import 'package:destini_flutter/widgets/widgets.dart';
import 'package:destini_flutter/models/models.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 15,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: CenterText(
                  text: StoryBrain.getStory.storyTitle,
                ),
              ),
              if (StoryBrain.buttonShouldBeVisible) ...[
                Expanded(
                  flex: 2,
                  child: StoryButtom(
                    color: Colors.deepPurple,
                    text: StoryBrain.getStory.choice1,
                    onPressed: () {
                      setState(() {
                        StoryBrain.nextStory(userChoice: UserChoice.one);
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20),
                if (StoryBrain.buttonShouldBeVisible)
                  Expanded(
                    flex: 2,
                    child: StoryButtom(
                      color: Colors.blue[900],
                      text: StoryBrain.getStory.choice2,
                      onPressed: () {
                        setState(() {
                          StoryBrain.nextStory(userChoice: UserChoice.two);
                        });
                      },
                    ),
                  ),
              ] else ...[
                const CenterText(text: 'THE END'),
                Expanded(
                  flex: 2,
                  child: StoryButtom(
                    color: Colors.black,
                    text: 'RESTART',
                    onPressed: () {
                      setState(() {
                        StoryBrain.restart();
                      });
                    },
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
