import 'package:flutter/material.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/util/dialogs.dart';
import 'package:hifive/util/formatting.dart';

class SocialListItem extends StatelessWidget {
  const SocialListItem({
    Key? key,
    required this.social,
    required this.onSocialPressed,
  }) : super(key: key);

  final SocialItem social;
  final void Function(SocialItem) onSocialPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSocialPressed(social),
      child: Card(
        elevation: 3.0,
        child: Dismissible(
          key: ValueKey("dismissable-${social.postId}"),
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
              context,
              title: "Are you sure?",
              content: "You want to delete this note?",
            );
            return result;
          },
          onDismissed: (_) {
            // context.read<ExamBloc>().add(Delete(note.id));
          },
          child: Container(
            height: 320.0,
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
                      '${social.postId} ${social.title}',
                      style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0),
                    ),
                    Text(
                      '${social.contents}',
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
