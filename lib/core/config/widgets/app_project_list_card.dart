// import 'package:flutter/material.dart';
//
// import 'app_status_badge.dart';
//
// // Reusable interactive progress bar with callback
// class InteractiveProgressBar extends StatefulWidget {
//   final double initialProgress; // 0.0 - 1.0
//   final double height;
//   final Color progressColor;
//   final Color backgroundColor;
//   final BorderRadius borderRadius;
//   final ValueChanged<double>? onChanged; // Callback when progress changes
//
//   const InteractiveProgressBar({
//     super.key,
//     this.initialProgress = 0.5,
//     this.height = 6,
//     this.progressColor = Colors.green,
//     this.backgroundColor = const Color(0xFFE0E0E0),
//     this.borderRadius = const BorderRadius.all(Radius.circular(6)),
//     this.onChanged,
//   });
//
//   @override
//   State<InteractiveProgressBar> createState() => _InteractiveProgressBarState();
// }
//
// class _InteractiveProgressBarState extends State<InteractiveProgressBar> {
//   late double progress;
//
//   @override
//   void initState() {
//     super.initState();
//     progress = widget.initialProgress.clamp(0.0, 1.0);
//   }
//
//   void _updateProgress(Offset localPosition, double width) {
//     double newProgress = (localPosition.dx / width).clamp(0.0, 1.0);
//     setState(() {
//       progress = newProgress;
//     });
//     if (widget.onChanged != null) {
//       widget.onChanged!(progress); // Send value to parent
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onPanUpdate: (details) {
//         final box = context.findRenderObject() as RenderBox;
//         _updateProgress(details.localPosition, box.size.width);
//       },
//       onTapDown: (details) {
//         final box = context.findRenderObject() as RenderBox;
//         _updateProgress(details.localPosition, box.size.width);
//       },
//       child: Container(
//         height: widget.height,
//         decoration: BoxDecoration(
//           color: widget.backgroundColor,
//           borderRadius: widget.borderRadius,
//         ),
//         child: FractionallySizedBox(
//           alignment: Alignment.centerLeft,
//           widthFactor: progress,
//           child: Container(
//             decoration: BoxDecoration(
//               color: widget.progressColor,
//               borderRadius: widget.borderRadius,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // Updated TaskCard using InteractiveProgressBar with dynamic text
// class TaskCard extends StatefulWidget {
//   const TaskCard({super.key});
//
//   @override
//   State<TaskCard> createState() => _TaskCardState();
// }
//
// class _TaskCardState extends State<TaskCard> {
//   double progress = 12 / 24;
//
//   @override
//   Widget build(BuildContext context) {
//     int totalTasks = 24;
//     int completedTasks = (progress * totalTasks).round();
//     int totalHours = 80;
//     int completedHours = (progress * totalHours).round();
//
//     return AppCustomCard(
//       height: 148, width: 341,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Title and subtitle
//           const Text(
//             'تطبيق التجارة الإلكترونية',
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 4),
//           const Text(
//             'شركة التقنية الحديثة',
//             style: TextStyle(
//               fontSize: 12,
//               color: Colors.grey,
//             ),
//           ),
//           const SizedBox(height: 12),
//           // Interactive progress bar
//           InteractiveProgressBar(
//             initialProgress: progress,
//             onChanged: (value) {
//               setState(() {
//                 progress = value;
//               });
//             },
//           ),
//           const SizedBox(height: 12),
//           // Task count and time
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   const Icon(Icons.check_circle, size: 16, color: Colors.grey),
//                   const SizedBox(width: 4),
//                   Text('$completedTasks/$totalTasks مهمة', style: const TextStyle(fontSize: 12)),
//                 ],
//               ),
//               Row(
//                 children: [
//                   const Icon(Icons.access_time, size: 16, color: Colors.grey),
//                   const SizedBox(width: 4),
//                   Text('$completedHours/$totalHours ساعة', style: const TextStyle(fontSize: 12)),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
