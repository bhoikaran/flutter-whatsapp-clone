import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(
          title: "Helloo",
          backgroundColor: const Color.fromARGB(255, 73, 208, 218)),
      StoryItem.inlineImage(
          url:
              "https://plus.unsplash.com/premium_photo-1736458633965-b19df4cced58?q=80&w=1625&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          controller: controller)
    ];
    return StoryView(
      storyItems: storyItems,
      controller: controller,
      inline: false,
      repeat: true,
    );
  }
}
