
//model of getting number of pages
class Moviedetails {
  Moviedetails({
    required this.totalPages,
    required this.totalResults,
  });

  late final int totalPages;
  late final int totalResults;

  Moviedetails.fromJson(Map<String, dynamic> json){

    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};

    _data['total_pages'] = totalPages;
    _data['total_results'] = totalResults;
    return _data;
  }
}



//model of getting details
class Movie {
  Movie({
    required this.adult,
    required this.backdropPath ,
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });
  late final bool adult;
  late final String? backdropPath;
  late final int id;
  late final String originalTitle;
  late final String overview;
  late final String title;
  late final String? voteAverage;
  late final int voteCount;

  Movie.fromJson(Map<String, dynamic> json){
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    id = json['id'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    title = json['title'];
    voteAverage = json['vote_average'].toString();
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['adult'] = adult;
    _data['backdrop_path'] = backdropPath;
    _data['id'] = id;
    _data['original_title'] = originalTitle;
    _data['overview'] = overview;
    _data['title'] = title;
    _data['vote_average'] = voteAverage;
    _data['vote_count'] = voteCount;
    return _data;
  }
}








