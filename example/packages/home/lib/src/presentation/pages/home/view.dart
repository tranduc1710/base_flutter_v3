import 'package:base_flutter_v3/base.dart';
import 'package:flutter/material.dart';

import 'cubit.dart';
import 'state.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<HomeCubit>(context);

    return BlocBuilder<HomeCubit, HomeState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: 'Home screen'.wText(),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              state.count.toString().wText(),
              ElevatedButton(
                onPressed: cubit.upCount,
                child: 'Up'.wText(),
              ),
              ElevatedButton(
                onPressed: cubit.downCount,
                child: 'Down'.wText(),
              ),
            ],
          ).wCenter(),
        );
      },
    );
  }
}
