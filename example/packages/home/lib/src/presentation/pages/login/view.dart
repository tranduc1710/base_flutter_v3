import 'package:base_flutter_v3/base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';
import 'event.dart';
import 'state.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
      LoginBloc()
        ..add(InitEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<LoginBloc>(context);

    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: 'Login'.wText(),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                state.count.toString().wText(),
                ElevatedButton(
                  onPressed: () => bloc.add(UpCountEvent()),
                  child: 'Up'.wText(),
                ),
                ElevatedButton(
                  onPressed: () => bloc.add(DownCountEvent()),
                  child: 'Down'.wText(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
