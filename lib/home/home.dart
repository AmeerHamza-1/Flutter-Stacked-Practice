import 'package:flutter/material.dart';
import 'package:st_management/home/homeview_model.dart';
import 'package:st_management/profile/profile.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeviewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
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
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Profile(),
                          ),
                        );
                      },
                      child: const Text("Go to Profile"))
                ],
              ),
            ),
          );
        });
  }
}
