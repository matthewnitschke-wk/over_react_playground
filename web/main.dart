import 'dart:async';
import 'dart:html';

import 'package:over_react/over_react.dart';
import 'package:react/react_client.dart' as react_client;
import 'package:react/react_dom.dart' as react_dom;

import 'app.dart';


Future main() async {
 
  react_client.setClientConfiguration();

  react_dom.render(
      ErrorBoundary()(
        App()()
      ),
      querySelector("#shell-container"));
}
