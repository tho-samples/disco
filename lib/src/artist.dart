import 'package:owl/annotation/json.dart';
import 'artist.json.g.dart';

@JsonClass()
class Artist {
  int id;
  String name, bio, avatar;
  @JsonField(key: 'year_born')
  int yearBorn;
  @JsonField(key: 'year_died')
  int yearDied;
  Artist(
      {this.id,
      this.name,
      this.bio,
      this.avatar,
      this.yearBorn,
      this.yearDied});
  factory Artist.fromMap(Map map) => ArtistMapper.parse(map);
  Map<String, dynamic> toJson() => ArtistMapper.map(this);
}
