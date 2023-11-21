import 'package:api_with_stacked/view%20model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onViewModelReady: (viewModel) => viewModel.getPosts(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: ListView.builder(
                itemCount: viewModel.post.length,
                itemBuilder: (context, index) {
                  final post = viewModel.post[index];
                  if (viewModel.isBusy) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (viewModel.post.isEmpty) {
                    return const Center(
                      child: Text('No Posts'),
                    );
                  } else {
                    return ListTile(
                      title: Text(post.title!),
                    );
                  }
                }),
          );
        });
  }
}
