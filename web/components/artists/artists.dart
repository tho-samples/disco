import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'artist_list/artist_list.dart';

@Component(
    selector: 'x-artists',
    templateUrl: 'artists.html',
    directives: const [ROUTER_DIRECTIVES])
@RouteConfig(const [
  const Route(path: '/', name: 'List', component: ArtistListComponent),
  const Redirect(path: '**', redirectTo: const ['List'], useAsDefault: true)
])
class ArtistsComponent {}
