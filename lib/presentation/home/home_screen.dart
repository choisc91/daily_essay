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

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageCtrl = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    final homeViewModel = context.watch<HomeViewModel>();
    final editViewModel = context.watch<EditViewModel>();
    final state = homeViewModel.state;
    return Scaffold(
      backgroundColor: Colors.black,
      body: (state.essays.isEmpty)
          ? const EmptyScreen()
          : PageView(
              controller: _pageCtrl,
              scrollDirection: Axis.vertical,
              children: state.essays.map((e) {
                return InkWell(
                  onTap: () => _onTapItem(homeViewModel, editViewModel, item: e),
                  child: EssayItem(
                    item: e,
                    onDelete: () {
                      final snackBar = SnackBar(
                        content: const Text('Delete essay?'),
                        action: SnackBarAction(
                          label: 'confirm',
                          onPressed: () {
                            homeViewModel.onEvent(HomeEvent.deleteEssay(e));
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                );
              }).toList(),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: const Icon(Icons.create, color: Colors.black),
        onPressed: () => _onTapItem(homeViewModel, editViewModel),
      ),
    );
  }

  void _onTapItem(HomeViewModel homeViewModel, EditViewModel editViewModel, {Essay? item}) async {
    final bool? isSave = await Navigator.push(context, MaterialPageRoute(builder: (context) => EditScreen(item: item)));
    editViewModel.clearPath();
    if (isSave != null && isSave) {
      homeViewModel.onEvent(const HomeEvent.refreshEssay());
    }
  }
}
