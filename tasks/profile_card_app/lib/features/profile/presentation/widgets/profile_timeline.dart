import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ProfileTimelineWidget extends StatelessWidget {
  const ProfileTimelineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final timelineData = [
      {"title": "Skills", "subtitle": "Flutter  • Firebase  • REST API"},
      {"title": "Experience", "subtitle": "Mobile Developer - 2024"},
      {"title": "Portfolio", "subtitle": "3 Mobile Applications"},
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
            margin: const EdgeInsets.symmetric(vertical: 20),
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
