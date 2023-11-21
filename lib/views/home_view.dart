import 'package:api_with_stacked/view%20model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onViewModelReady: (viewModel) => viewModel.getUnicorns(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: ListView.builder(
                itemCount: viewModel.unicorn.length,
                itemBuilder: (context, index) {
                  final unicorn = viewModel.unicorn[index];
                  if (viewModel.isBusy) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (viewModel.unicorn.isEmpty) {
                    return const Center(
                      child: Text('No Posts'),
                    );
                  } else {
                    return ListTile(
                      title: Text(unicorn.name!),
                    );
                  }
                }),
          );
        });
  }
}
