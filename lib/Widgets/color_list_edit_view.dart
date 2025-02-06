import 'package:flutter/material.dart';
import 'package:notes_app/Model/notes_app_model.dart';

import 'package:notes_app/Widgets/cutsome_color_item.dart';
import 'package:notes_app/constant.dart';

class ColorListEditView extends StatefulWidget {
  const ColorListEditView({super.key, required this.note});
  final NotesAppModel note;
  @override
  State<ColorListEditView> createState() => _ColorListEditViewState();
}

int? currentIndex;

class _ColorListEditViewState extends State<ColorListEditView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        itemCount: kColorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;

                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: kColorsList[index].toColor(),
              ),
            ),
          );
        },
      ),
    );
  }
}
