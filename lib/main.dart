import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medium',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Image.asset(
                'assets/medium.png',
                key: const ValueKey("imageMedium"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Join Medium.',
                  key: const ValueKey("textTitle"),
                  style: textTheme.headlineLarge?.copyWith(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                OutlinedButton(
                  key: const ValueKey('signupGoogle'),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/google.png',
                        width: 20,
                      ),
                      const Expanded(
                        child: Text(
                          'Sign up with Google',
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                OutlinedButton(
                  key: const ValueKey('signupEmail'),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/email.png',
                        width: 20,
                      ),
                      const Expanded(
                        child: Text(
                          'Sign up with Email',
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        key: ValueKey('dividerLeft'),
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text('Or, sign up with'),
                    SizedBox(width: 8),
                    Expanded(
                      child: Divider(
                        key: ValueKey('dividerRight'),
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: IconButton(
                    key: const ValueKey('buttonFacebook'),
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/facebook.png',
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Already have an account? '),
                      TextSpan(
                        text: 'Sign in',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'By signing up, you agree to our '),
                  TextSpan(
                    text: 'Terms of Service',
                    style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: ' and acknowledge that our '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: ' applies to you.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
