import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2/platform/common.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:material2_dart/material.dart';
import 'components/disco_app/disco_app.dart';
import 'services/services.dart';

main() => bootstrap(DiscoAppComponent, [
      DISCO_PROVIDERS,
      MATERIAL_PROVIDERS,
      ROUTER_PROVIDERS,
      MdIconRegistry,
      materialProviders,
      provide(LocationStrategy, useClass: HashLocationStrategy)
    ]);
