import 'package:flutter/material.dart';

class PanduanCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final dynamic destination;
  const PanduanCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.destination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => destination,
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(width: 2, color: Colors.blue),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(8),
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: Container(
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(30),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
