import 'package:epwing_viewer/bloc/search/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          if (state is SearchInitial) {
            context.read<SearchBloc>().add(SearchInit());
            return const Center(child: CircularProgressIndicator());
          }
          if (state is SearchQuery) {
            return Column(
              children: [
                TextField(),
                Flexible(
                  child: ListView.builder(
                    controller: ScrollController(),
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('Item 1'),
                      );
                    },
                  ),
                ),
              ],
            );
          } else {
            return const Center(child: Text('Something went wrong.'));
          }
        },
      ),
      drawer: Drawer(
        child: Container(),
      ),
    );
  }
}
