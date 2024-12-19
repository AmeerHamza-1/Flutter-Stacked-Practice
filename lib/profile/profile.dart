import 'package:flutter/material.dart';
import 'package:st_management/profile/profile_vm.dart';
import 'package:stacked/stacked.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProfileVm(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(title: const Text("Profile")),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(viewModel.counter.toString()),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.addValue();
                      },
                      child: const Text("Add")),
                ],
              ),
            ),
          );
        });
  }
}
