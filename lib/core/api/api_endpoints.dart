class EndPoints {
  static const String populerEndPoint = "/3/movie/popular";
  static const String upcomingEndPoint = "/3/movie/upcoming";
  static const String topRatedEndPoint = "/3/movie/top_rated";
  static String movieDetailsEndPoint({required num movieId}) =>
      "/3/movie/$movieId";
  static String searchEndPoint = "/3/search/movie";
}
