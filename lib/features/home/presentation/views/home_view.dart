import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti8_news/features/home/presentation/cubit/test_cubit/test_state.dart';

import '../cubit/test_cubit/test_cubit.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestCubit(),
      child: Scaffold(
        body: BlocBuilder<TestCubit, TestState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(
                    value: TestCubit.get(context).mySwitch,
                    onChanged: TestCubit.get(context).onSwitchChanged,
                  ),
                  Checkbox(
                    value: TestCubit.get(context).myCheckBox,
                    onChanged: TestCubit.get(context).onCheckChanged,
                  ),

                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
