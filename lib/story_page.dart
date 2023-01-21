import 'package:destini/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoryPage extends ConsumerStatefulWidget {
  const StoryPage({super.key});

  @override
  ConsumerState<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends ConsumerState<StoryPage> {
  @override
  Widget build(BuildContext context) {
    final storyDetails = ref.watch(storyBrainProvider.notifier);
    int storyNum = ref.watch(storyNumProvider);
    final storyFunc = ref.watch(storyNumProvider.notifier);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.png'), fit: BoxFit.cover)),
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyDetails.getStory(storyNum),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    storyFunc.nextStory(1);
                  },
                  child: Text(
                    storyDetails.getChoice1(storyNum),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    storyFunc.nextStory(2);
                    ;
                  },
                  child: Text(
                    storyDetails.getChoice2(storyNum),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
