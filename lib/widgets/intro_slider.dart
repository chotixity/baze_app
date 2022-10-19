import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

class IntroSlider extends StatelessWidget {
  IntroSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IntroductionScreen(
      done: Text(
        'welcome',
        style: theme.textTheme.titleMedium,
      ),
      onDone: (() {}),
      showNextButton: false,
      pages: [
        PageViewModel(
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            bodyTextStyle: TextStyle(color: Colors.grey),
          ),
          title: 'Affordable hostels and rooms',
          body: 'browse through top rated hostels rated by students',
          image: Center(
            child: Image.network(
              'https://media.istockphoto.com/photos/modern-scandinavian-living-room-interior-3d-render-picture-id1184204517?b=1&k=20&m=1184204517&s=170667a&w=0&h=5AKfkUCmJun_upYtTCL6mhDJeupe46pdFgbiem-O2-Q=',
            ),
          ),
          footer: ButtonTheme(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.yellow,
                ),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(
                    MediaQuery.of(context).size.width * .75,
                    MediaQuery.of(context).size.width * .1,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ),
        PageViewModel(
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            bodyTextStyle: TextStyle(color: Colors.grey),
          ),
          title: 'Pay your rent instantly',
          body: 'Pay direct from your mpesa or bank account',
          image: Image.network(
            'https://media.istockphoto.com/photos/modern-scandinavian-living-room-interior-3d-render-picture-id1184204517?b=1&k=20&m=1184204517&s=170667a&w=0&h=5AKfkUCmJun_upYtTCL6mhDJeupe46pdFgbiem-O2-Q=',
            fit: BoxFit.cover,
          ),
        ),
        PageViewModel(
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            bodyTextStyle: TextStyle(color: Colors.grey),
          ),
          title: 'Affordable hostels and rooms',
          body: 'browse through top rated hostels rated by students',
          image: Image.network(
            'https://media.istockphoto.com/photos/modern-scandinavian-living-room-interior-3d-render-picture-id1184204517?b=1&k=20&m=1184204517&s=170667a&w=0&h=5AKfkUCmJun_upYtTCL6mhDJeupe46pdFgbiem-O2-Q=',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
