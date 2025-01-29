import 'package:flutter/material.dart';

class NoteItems extends StatelessWidget {
  NoteItems({
    this.onTap,
    super.key,
  });
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(right: 16, left: 24, top: 24, bottom: 24),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'This my body create by Tamer Elateeq',
                  style: TextStyle(
                      color: const Color.fromARGB(221, 54, 54, 54),
                      fontSize: 16),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    size: 35,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                '29 jan 2025',
                style: TextStyle(
                  color: const Color.fromARGB(221, 54, 54, 54),
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
