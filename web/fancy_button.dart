import 'package:over_react/over_react.dart';

part 'fancy_button.over_react.g.dart'; // ignore: uri_has_not_been_generated

UiFactory<FancyButtonProps> FancyButton = _$FancyButton; // ignore: undefined_identifier, invalid_assignment

mixin FancyButtonProps on UiProps {
  String skin;
}

mixin FancyButtonState on UiState {
  int counter;
}

class FancyButtonComponent extends UiStatefulComponent2<FancyButtonProps, FancyButtonState> {
  @override
  Map get defaultProps => (newProps()
    ..skin = 'yellow'
  );

  @override
  Map get initialState => (newState()
    ..counter = 0
  );

  @override
  ReactElement render() {
    return (Dom.div()
      ..style = {'backgroundColor': props.skin}
    )(
      Dom.div()('Button clicked: ${state.counter}'),
      (Dom.button()
        ..onClick = _handleClick
      )('Click Me!')
    );
  }

  void _handleClick(_) {
    setState(newState()
      ..counter = state.counter + 1
    );
  }
}