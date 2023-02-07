import 'package:flutter/material.dart';
import 'package:kongdoc/models/exam_model.dart';
import 'package:kongdoc/util/colors.dart';
import 'package:kongdoc/util/dialogs.dart';
import 'package:kongdoc/util/formatting.dart';
import 'dart:math' as math;

class ExamList extends StatelessWidget {
  const ExamList({
    Key? key,
    required this.items,
    required this.onNotePressed,
  }) : super(key: key);

  final List<ExamItem> items;
  final void Function(ExamItem) onNotePressed;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final exam = items[index];

          return ExamListItem(
            key: ValueKey("list-item-${exam.id}"),
            exam: exam,
            onPressed: onNotePressed,
          );
        },
        childCount: items.length,
      ),
    );
  }
}

class ExamListItem extends StatelessWidget {
  const ExamListItem({
    Key? key,
    required this.exam,
    required this.onPressed,
  }) : super(key: key);

  final ExamItem exam;
  final void Function(ExamItem) onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(exam),
      child: Card(
        elevation: 3.0,
        child: Dismissible(
          key: ValueKey("dismissable-${exam.id}"),
          direction: DismissDirection.endToStart,
          background: Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SizedBox(
                  width: 100.0,
                  height: double.infinity,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 40.0,
                  ),
                )
              ],
            ),
          ),
          confirmDismiss: (_) async {
            final result = showConfirmation(
              title: "Are you sure?",
              content: "You want to delete this note?",
            );
            return result;
          },
          onDismissed: (_) {
            // context.read<ExamBloc>().add(Delete(note.id));
          },
          child: Container(
            height: 120.0,
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${exam.id} ${exam.title}',
                      style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0),
                    ),
                    Text(
                      exam.body,
                      maxLines: 2,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 20.0,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        size: 12.0,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        formatDateTime('2022-10-20T09:22:21.000000Z'),
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).hintColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
