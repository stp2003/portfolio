import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class ProjectInfo {
  final String? title, description, link;
  final Color? buttonColor;

  ProjectInfo({
    this.title,
    this.description,
    this.link,
    this.buttonColor,
  });
}

List<ProjectInfo> demoProjects = [
  ProjectInfo(
    title: "Responsive Chat App with firebase backend - Baat Cheet",
    description:
        "This is a fully responsive Chat App integrated with firebase backend and uses riverpod 2.0 for state management. This app has it all- phone number verification, one to one chatting , group chatting, 24-hour based status funtionality, user online or offline verification, message seen or not verification, replying to a particular message, sharing emojis, gifs, pictures, video and audio, and calling funtionality with your contacts who uses this app.",
    link: 'https://github.com/stp2003/Baat-Cheet',
    buttonColor: primaryColor,
  ),
  ProjectInfo(
    title: "Online Meeting App - Virtual Vortex",
    description:
        "In this app I have build a complete online meeting app with firebase authentication and Jitse_Meet. In this app you can start a meeting share the meeting link or meeting code to other to join in or you can join the meeting by doing the same. You can share the screen, raise your hand, chat during the meeting mute or unmute if you are host. Yor entite details will be shown in details section that how many meet you joined, on which day and for how many minutes.",
    link: 'https://github.com/stp2003/virtual_vortex',
    buttonColor: ternaryColor,
  ),
  ProjectInfo(
    title: "Whether App",
    description:
        "This is simple weather app which fetches the data from wheatherapi.com and show the weather of a given searched place. It has a really beautiful UI which shows the weather of an entire week. This is 2 screen app which shows the weather in detail and shows corresponding images to make a good user experience.",
    link: 'https://github.com/stp2003/whether_app_flutter',
    buttonColor: Colors.cyan,
  ),
  ProjectInfo(
    title: "Image Editor App",
    description:
        "This is an simple image editor app in which we can upload a image from our device and write something on the image, then we can change the size of the text, change the position by draging the text, change the color of the text through a color pallett, we can change the font weigth of the text i.e bold and italics.",
    link: 'https://github.com/stp2003/image_editor',
    buttonColor: Colors.amberAccent,
  ),
  ProjectInfo(
    title: "Dictionary App",
    description:
        "This is simple weather app which fetches the data from owlbotapi.com and show the meaning of a given word. It has a really beautiful UI which shows the meaning or meanings of a word if there are more than one meaning. It also show the parts of speech for a given word as well as meaning or meanings.",
    link: 'https://github.com/stp2003/dictionary_app_flutter',
    buttonColor: Colors.tealAccent,
  ),
  ProjectInfo(
    title: "Flutter Apps with ML Integration",
    description:
        "I have made few flutter projects with ML integration like speech to text convertor, text to speech convertor and a qr-code generator and scanner, whic scans any given qr and opens in browser and it can also generate a qr-code for any text, photo or any link.",
    link: 'https://github.com/stp2003/tts_flutter',
    buttonColor: ternaryColor,
  ),
];
