import 'package:owl/annotation/json.dart';
import 'album.json.g.dart';

@JsonClass()
class Album {
  int id;
  @JsonField(key: 'artist_id')
  int artistId;
  String name;
  @JsonField(key: 'cover_art')
  String coverArt;
  int year;
  Album({this.id, this.artistId, this.name, this.coverArt, this.year});
  factory Album.fromMap(Map map) => AlbumMapper.parse(map);
  Map<String, dynamic> toJson() => AlbumMapper.map(this);
}
