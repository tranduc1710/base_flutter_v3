import 'package:base_flutter_v3/base.dart';
import 'package:flutter/material.dart';
import 'package:home/src/presentation/pages/home/view.dart';
import 'package:home/src/presentation/pages/login/view.dart';

import 'cubit.dart';
import 'state.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SplashCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<SplashCubit>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                kPrint('onPress');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: 'Home'.wText(),
            ),
            ElevatedButton(
              onPressed: () {
                kPrint('onPress');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: 'Login'.wText(),
            ),
          ],
        ),
      ),
    );
  }
}
