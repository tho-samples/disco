import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:material_menu/material_menu.dart';
import 'package:material_sidenav/material_sidenav.dart';
import 'package:material_toolbar/material_toolbar.dart';
import 'package:material2_dart/material.dart';
import '../artists/artists.dart';
import '../favorite_albums/favorite_albums.dart';

@Component(
    selector: 'disco-app',
    templateUrl: 'disco_app.html',
    styleUrls: const [
      'disco_app.css'
    ],
    directives: const [
      MATERIAL_DIRECTIVES,
      ROUTER_DIRECTIVES,
      MaterialSidenavComponent,
      MaterialToolbarComponent,
      materialDirectives,
      menuDirectives
    ])
@RouteConfig(const [
  const Route(
      path: '/artists/...', name: 'Artists', component: ArtistsComponent),
  const Route(
      path: '/favorites',
      name: 'FavoriteAlbums',
      component: FavoriteAlbumsComponent),
  const Redirect(
      path: '**', redirectTo: const ['Artists/List'], useAsDefault: true)
])
class DiscoAppComponent {
  bool open = false;
}
