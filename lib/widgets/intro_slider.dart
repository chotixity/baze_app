import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';
import '../widgets/Tabs.dart';

class IntroSlider extends StatelessWidget {
  IntroSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IntroductionScreen(
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
          bodyWidget: SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'browse through top rated hostels and rooms',
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 22,
                  ),
                ),
                ButtonTheme(
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
                    onPressed: () {
                      Navigator.of(context).pushNamed(Tabs.routeName);
                    },
                  ),
                ),
              ],
            ),
          ),
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
          title: 'Pay your rent instantly',
          bodyWidget: SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pay direct from your mpesa or bank account',
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 22,
                  ),
                ),
                ButtonTheme(
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
                    onPressed: () {
                      Navigator.of(context).pushNamed(Tabs.routeName);
                    },
                  ),
                ),
              ],
            ),
          ),
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
          title: 'Come through for your homie',
          bodyWidget: SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'chip in to your friend\'s rent when they come up short',
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 22,
                  ),
                ),
                ButtonTheme(
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
                    onPressed: () {
                      Navigator.of(context).pushNamed(Tabs.routeName);
                    },
                  ),
                ),
              ],
            ),
          ),
          image: Center(
            child: Image.network(
              'https://media.istockphoto.com/photos/modern-scandinavian-living-room-interior-3d-render-picture-id1184204517?b=1&k=20&m=1184204517&s=170667a&w=0&h=5AKfkUCmJun_upYtTCL6mhDJeupe46pdFgbiem-O2-Q=',
            ),
          ),
          //footer:
        ),
      ],
      skip: const Icon(
        Icons.skip_next,
        semanticLabel: 'Skip',
      ),
      showSkipButton: true,
      //showBackButton: true,
      showDoneButton: false,
    );
  }
}
