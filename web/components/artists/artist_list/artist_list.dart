import 'package:angular2/angular2.dart';
import 'package:disco/disco.dart';
import 'package:material_menu/material_menu.dart';
import 'package:material2_dart/material.dart';
import '../../../services/artist.dart';

@Component(
    selector: 'artist-list',
    templateUrl: 'artist_list.html',
    directives: const [MATERIAL_DIRECTIVES, menuDirectives])
class ArtistListComponent {
  final ArtistService _artistService;

  List<Artist> get artists => _artistService.artists;

  ArtistListComponent(this._artistService);
}
