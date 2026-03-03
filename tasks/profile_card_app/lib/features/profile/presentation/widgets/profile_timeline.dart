import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ProfileTimelineWidget extends StatelessWidget {
  const ProfileTimelineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final timelineData = [
      {
        "title": "Skills",
        "subtitle":
            "• Flutter  • Dart • Firebase  • MVVM Architecture  • Git & GitHub  •  API Integration   ",
      },
      {
        "title": "Experience",
        "subtitle":
            " * Raed Aamal Competition – UCCD\nTop 10 Finalist (5th out of 64 teams)\nBuilt and presented an IoT-based child health monitoring app using Flutter.\n\n * Guest Speaker – Mansoura University\nDelivered a Flutter workshop and showcased a real-world graduation project.\n\n * Mobile Development Trainee – NTI\nCompleted Mobile Track and built a full final project with full mark.\n\n * Volunteer Project – Medical Monitoring System\nDeveloped the Flutter app and integrated Firebase with real sensor data.",
      },
      {
        "title": "Portfolio",
        "subtitle":
            "Some of my work – take a look at a few project samples showcasing mobile apps, IoT integration, and UI designs.",
      },
    ];
    return Column(
      children: List.generate(timelineData.length, (index) {
        final item = timelineData[index];
        return TimelineTile(
          axis: TimelineAxis.vertical,
          alignment: TimelineAlign.start,
          isFirst: index == 0,
          isLast: index == timelineData.length - 1,
          indicatorStyle: const IndicatorStyle(
            width: 20,
            color: Color.fromARGB(255, 20, 22, 22),
          ),
          beforeLineStyle: const LineStyle(color: Colors.grey, thickness: 2),
          afterLineStyle: const LineStyle(color: Colors.grey, thickness: 2),
          endChild: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item["title"]!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(item["subtitle"]!),
              ],
            ),
          ),
        );
      }),
    );
  }
}
