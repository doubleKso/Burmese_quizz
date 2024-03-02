import 'package:burmese_quiz_in_flutter/models/full_questions_model.dart';
import 'package:burmese_quiz_in_flutter/models/loc_questions_model.dart';
import 'package:burmese_quiz_in_flutter/models/old_questions_model.dart';
import 'package:burmese_quiz_in_flutter/models/src_questions_model.dart';
import 'package:flutter/cupertino.dart';

const Color cardColor = Color.fromARGB(255, 250, 73, 79);

class FlutterTopics {
  final int id;
  final String topicName;
  final IconData topicIcon;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicColor,
    required this.topicIcon,
    required this.topicName,
    required this.topicQuestions,
  });
}

final List<FlutterTopics> flutterTopicsList = [
  FlutterTopics(
    id: 0,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.person_badge_plus,
    topicName: "OLD",
    topicQuestions: oLDQuestionsList,
  ),
  FlutterTopics(
    id: 1,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.battery_100,
    topicName: "FULL",
    topicQuestions: fULLQuestionsList,
  ),
  FlutterTopics(
    id: 2,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.paperplane,
    topicName: "LOC",
    topicQuestions: lOCQuestionsList,
  ),
  FlutterTopics(
    id: 3,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.rectangle_arrow_up_right_arrow_down_left,
    topicName: "SRC",
    topicQuestions: sRCQuestionsList,
  ),
];
