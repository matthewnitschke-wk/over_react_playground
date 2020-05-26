import 'package:over_react/over_react.dart';

import 'fancy_button.dart';
part 'app.over_react.g.dart';

UiFactory<AppProps> App = _$App; // ignore: undefined_identifier, invalid_assignment

mixin AppProps on UiProps {}

class AppComponent extends UiComponent2<AppProps> {
  @override
  Map get defaultProps => (newProps());

  @override
  ReactElement render() {
    return Dom.div()(
      Dom.h1()('Hello World'),
      (FancyButton()
        ..skin = 'green'
      )(),
    );
  }
}