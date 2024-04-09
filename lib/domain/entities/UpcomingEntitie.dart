/// backdrop_path : "/sR0SpCrXamlIkYMdfz83sFn5JS6.jpg"
/// genre_ids : [28,878,12,14]
/// id : 823464
/// poster_path : "/tMefBSflR6PGQLv7WvFPpKLZkyk.jpg"

class UpcomingEntitie {
  UpcomingEntitie({
      this.backdropPath, 
      this.genreIds, 
      this.id, 
      this.posterPath,});

  UpcomingEntitie.fromJson(dynamic json) {
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<num>() : [];
    id = json['id'];
    posterPath = json['poster_path'];
  }
  String? backdropPath;
  List<num>? genreIds;
  num? id;
  String? posterPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['backdrop_path'] = backdropPath;
    map['genre_ids'] = genreIds;
    map['id'] = id;
    map['poster_path'] = posterPath;
    return map;
  }

}