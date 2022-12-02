import 'package:daily_essay/presentation/home/components/empty_screen.dart';
import 'package:daily_essay/presentation/home/components/essay_item.dart';
import 'package:daily_essay/presentation/home/home_state.dart';
import 'package:daily_essay/presentation/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  //
  HomeScreen({Key? key}) : super(key: key);

  final PageController _pageCtrl = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: _buildBody(state),
      floatingActionButton: _buildFab(),
    );
  }

  Widget _buildBody(HomeState state) {
    if (state.essays.isEmpty) {
      return const EmptyScreen();
    } else {
      // todo add page view.
      return PageView(
        controller: _pageCtrl,
        scrollDirection: Axis.vertical,
        children: state.essays.map((e) => EssayItem(item: e)).toList(),
      );
    }
  }

  Widget _buildFab() {
    return FloatingActionButton(
      child: const Icon(Icons.create, color: Colors.white),
      onPressed: () {
        // todo add essay.
      },
    );
  }
}
