import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  VideoSection({super.key});
  final List<String> _videos = [
    'Introduction to Flutter',
    'Installing Flutter on Windows',
    'Installing Flutter on Mac',
    'Setup Emulator on Windows',
    'Setup Emulator on Mac',
    'Develop our first App',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _videos.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ListTile(
        leading: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: index == 0
                ? const Color(0xFF674AEF)
                : const Color(0xFF674AEF).withOpacity(0.6),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Text(_videos[index]),
        subtitle: const Text("20 min. 50 sec."),
      ),
    );
  }
}
