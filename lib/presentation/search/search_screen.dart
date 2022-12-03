import 'dart:async';

import 'package:daily_essay/presentation/home/components/empty_screen.dart';
import 'package:daily_essay/presentation/search/components/preview_item.dart';
import 'package:daily_essay/presentation/download/download_screen.dart';
import 'package:daily_essay/presentation/search/search_event.dart';
import 'package:daily_essay/presentation/search/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();
    _initEventStream();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchViewModel>();
    final state = viewModel.state;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: .0,
        backgroundColor: Colors.grey,
        title: TextField(
          maxLines: 1,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.search),
          ),
          onSubmitted: (String query) {
            viewModel.onEvent(SearchEvent.searchPicture(query));
          },
        ),
      ),
      body: Column(
        children: [
          (state.isLoading)
              ? const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Expanded(
                  child: (viewModel.state.pictures.isNotEmpty)
                      ? GridView.builder(
                          itemCount: state.pictures.length,
                          padding: const EdgeInsets.all(8.0),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              child: PreviewItem(picture: state.pictures[index]),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DownloadScreen(
                                      index: index,
                                      pictures: viewModel.state.pictures,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        )
                      : const EmptyScreen(),
                ),
        ],
      ),
    );
  }

  void _initEventStream() {
    Future.microtask(() {
      final viewModel = context.read<SearchViewModel>();
      _subscription = viewModel.eventCtrl.listen((event) {
        event.when(
          showMessage: (message) {
            final snackBar = SnackBar(content: Text(message));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        );
      });
    });
  }
}
