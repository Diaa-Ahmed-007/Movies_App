/// backdrop_path : "/9kyyQXy79YRdY5mhrYKyktbFMev.jpg"
/// id : 94954
/// poster_path : "/rXojaQcxVUubPLSrFV8PD4xdjrs.jpg"
/// name : "Hazbin Hotel"

class TopRatedSeriesEntity {
  TopRatedSeriesEntity({
      this.backdropPath, 
      this.id, 
      this.posterPath, 
      this.name,});

  TopRatedSeriesEntity.fromJson(dynamic json) {
    backdropPath = json['backdrop_path'];
    id = json['id'];
    posterPath = json['poster_path'];
    name = json['name'];
  }
  String? backdropPath;
  num? id;
  String? posterPath;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['backdrop_path'] = backdropPath;
    map['id'] = id;
    map['poster_path'] = posterPath;
    map['name'] = name;
    return map;
  }

}