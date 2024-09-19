import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_with_api/Models/NoteModel.dart';
import 'package:note_with_api/Pages/NewNotePage.dart';
import 'package:note_with_api/Pages/NotesDetails.dart';

class NoteWidgets extends StatelessWidget {
  final NoteModel note;
  const NoteWidgets({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(
            NotesDetails(
          note: note,
        ));
      },
      child: Container(
        margin: EdgeInsets.all(3),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.teal.shade200,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    note.title!,
                    maxLines: 1,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Flexible(
                    child: Text(
                      note.description!,
                      maxLines: 8,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
