import 'package:flutter/material.dart';
import 'package:streamflix/components/element.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  'https://fastly.picsum.photos/id/686/536/354.jpg?hmac=nQKjRmIoZtUkWvI-wNF8RFNW89VHuPIPT2muuPPL3QY',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, 35),
              child: FractionallySizedBox(
                widthFactor: 0.6,
                child: Image.network(
                  'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/4b0377e83a92d96fdd2fe5e8f6dafa4aebdc3d433d6487d9f86edd83931127d9._SX900_FMpng_.png',
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 50),
          child: Text(
            'Vorschläge',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        Row(
          children: const [
            ContentElement(
              'https://fastly.picsum.photos/id/686/536/354.jpg?hmac=nQKjRmIoZtUkWvI-wNF8RFNW89VHuPIPT2muuPPL3QY',
            ),
          ],
        ),
      ],
    );
  }
}
