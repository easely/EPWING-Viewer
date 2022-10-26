part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchInit extends SearchEvent {}

class QueryChange extends SearchEvent {
  final String query;

  const QueryChange(this.query);

  @override
  List<Object> get props => [query];
}
