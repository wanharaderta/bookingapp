import 'package:bookingapp/config/theme/theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {

  const PrimaryButton({
    Key? key,
    this.textButton = "",
    this.type = PrimaryButtonType.small,
    required this.onPressed
  }) : super(key: key);

  final VoidCallback? onPressed;
  final PrimaryButtonType type;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return type == PrimaryButtonType.small
        ? small()
        : type == PrimaryButtonType.medium
        ? medium() : large()
  }

  Widget small() {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
            textButton,
            style: AppFont.componentSmall
        ),
    );
  }

  Widget medium() {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
          textButton,
          style: AppFont.componentMedium
      ),
    );
  }

  Widget large() {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
          textButton,
          style: AppFont.componentLarge
      ),
    );
  }
}
enum PrimaryButtonType {
  small,
  medium,
  large,
}
