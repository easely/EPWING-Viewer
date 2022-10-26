part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchQuery extends SearchState {
  final String query;

  const SearchQuery(this.query);

  @override
  List<Object> get props => [query];
}
