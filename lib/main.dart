import 'package:destini/story_brain.dart';
import 'package:destini/story_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//TODO: Step 15 - Run the app and see if you can see the screen update with the first story. Delete this TODO if it looks as you expected.
final storyNumProvider =
    StateNotifierProvider<StoryNumNotifier, int>(((ref) => StoryNumNotifier()));
final storyBrainProvider =
    StateNotifierProvider<StoryBrainNotifier, StoryBrain>(
        ((ref) => StoryBrainNotifier()));
void main() => runApp(ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const StoryPage(),
      ),
    ));







//TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/
