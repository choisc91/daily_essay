import 'package:daily_essay/domain/model/essay.dart';
import 'package:daily_essay/presentation/edit/edit_screen.dart';
import 'package:daily_essay/presentation/edit/edit_view_model.dart';
import 'package:daily_essay/presentation/home/components/empty_screen.dart';
import 'package:daily_essay/presentation/home/components/essay_item.dart';
import 'package:daily_essay/presentation/home/home_event.dart';
import 'package:daily_essay/presentation/home/home_state.dart';
import 'package:daily_essay/presentation/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  final PageController _pageCtrl = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    final homeViewModel = context.watch<HomeViewModel>();
    final editViewModel = context.watch<EditViewModel>();
    final state = homeViewModel.state;
    return Scaffold(
      backgroundColor: Colors.black,
      body: _buildBody(state),
      floatingActionButton: _buildFab(context, homeViewModel, editViewModel),
    );
  }

  Widget _buildBody(HomeState state) {
    if (state.essays.isEmpty) {
      return const EmptyScreen();
    } else {
      return PageView(
        controller: _pageCtrl,
        scrollDirection: Axis.vertical,
        children: state.essays.map((e) {
          return EssayItem(item: e, onTap: () => _onTapItem(e));
        }).toList(),
      );
    }
  }

  Widget _buildFab(BuildContext context, HomeViewModel homeViewModel, EditViewModel editViewModel) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      child: const Icon(Icons.create, color: Colors.black),
      onPressed: () async {
        final bool? isSave = await Navigator.push(context, MaterialPageRoute(builder: (context) => const EditScreen()));
        editViewModel.clearPath(); // 기존에 남아있던 데이터 삭제 코드.
        if (isSave != null && isSave) {
          homeViewModel.onEvent(const HomeEvent.refreshEssay());
        }
      },
    );
  }

  void _onTapItem(Essay item) {
    // todo 아이템 클릭 했을 시 처리.
  }
}
