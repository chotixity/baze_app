import 'package:/flutter/material.dart';

class SignInOptions extends StatelessWidget {
  const SignInOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(45),
              right: Radius.circular(45),
            ),
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
          ),
          child: Expanded(
            child: Row(
              children: const [
                Text('Sign In with Google'),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
