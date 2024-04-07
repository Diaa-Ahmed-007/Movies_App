class PopularEntitie {
final bool? adult;
final String? backdropPath;
final num? id;
final String? posterPath;
final String? releaseDate;
final String? title;
const PopularEntitie({this.adult , this.backdropPath , this.id , this.posterPath , this.releaseDate , this.title });
PopularEntitie copyWith({bool? adult, String? backdropPath, int? id, String? posterPath, String? releaseDate, String? title}){
return PopularEntitie(
            adult:adult ?? this.adult,
backdropPath:backdropPath ?? this.backdropPath,
id:id ?? this.id,
posterPath:posterPath ?? this.posterPath,
releaseDate:releaseDate ?? this.releaseDate,
title:title ?? this.title
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'adult': adult,
'backdrop_path': backdropPath,
'id': id,
'poster_path': posterPath,
'release_date': releaseDate,
'title': title
    };
}

static PopularEntitie fromJson(Map<String , Object?> json){
    return PopularEntitie(
            adult:json['adult'] == null ? null : json['adult'] as bool,
backdropPath:json['backdrop_path'] == null ? null : json['backdrop_path'] as String,
id:json['id'] == null ? null : json['id'] as int,
posterPath:json['poster_path'] == null ? null : json['poster_path'] as String,
releaseDate:json['release_date'] == null ? null : json['release_date'] as String,
title:json['title'] == null ? null : json['title'] as String
    );
}

@override
String toString(){
    return '''PopularEntitie(
                adult:$adult,
backdropPath:$backdropPath,
id:$id,
posterPath:$posterPath,
releaseDate:$releaseDate,
title:$title
    ) ''';
}

@override
bool operator ==(Object other){
    return other is PopularEntitie && 
        other.runtimeType == runtimeType &&
        other.adult == adult && 
other.backdropPath == backdropPath && 
other.id == id && 
other.posterPath == posterPath && 
other.releaseDate == releaseDate && 
other.title == title;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                adult, 
backdropPath, 
id, 
posterPath, 
releaseDate, 
title
    );
}
    
}
      
      
  
     