
sealed class BookEvent{}

final class OpenFile extends BookEvent {
  final String path;

  OpenFile({required this.path});
}

final class AllBooksBookEvent extends BookEvent{}

final class DownloadBookEvenet extends BookEvent{
}