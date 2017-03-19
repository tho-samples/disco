import 'package:angular2/angular2.dart';
import 'package:disco/disco.dart';

@Injectable()
class ArtistService {
  final List<Artist> artists = [
    new Artist(
        id: 0,
        name: 'Michael Jackson',
        bio: 'King of Pop',
        avatar:
            '/images/artists/mj.jpg',
        yearBorn: 1958,
        yearDied: 2009)
  ];
}
