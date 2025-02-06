import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/Model/color_model.dart';
import 'package:notes_app/Widgets/cutsome_color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

int? currentIndex;
List<ColorModel> colors = [
  ColorModel(a: 255, r: 255, g: 193, b: 7),
  ColorModel(a: 255, r: 76, g: 175, b: 80),
  ColorModel(a: 255, r: 224, g: 64, b: 251),
  ColorModel(a: 255, r: 224, g: 67, b: 54),
  ColorModel(a: 255, r: 224, g: 64, b: 129),
];

class _ColorListViewState extends State<ColorListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNotesCubit>(context).color = colors[index];
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colors[index].toColor(),
              ),
            ),
          );
        },
      ),
    );
  }
}
