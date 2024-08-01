
sealed class BookState{}

final class InitialBookState extends BookState{}

final class LoadingBookState extends BookState{}

final class LoadedBookState extends BookState{}

final class DownloadBookState extends BookState{
  double prosent;

  DownloadBookState(this.prosent);
}

final class ErrorBookState extends BookState{}