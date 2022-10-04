import 'package:flutter/material.dart';

class PanduanCardSecond extends StatelessWidget {
  final String title;
  final String subtitle;
  final dynamic destination;
  const PanduanCardSecond({
    Key? key,
    required this.title,
    required this.subtitle,
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
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(subtitle),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
