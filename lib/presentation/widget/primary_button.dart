import 'package:bookingapp/config/theme/theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {

  const PrimaryButton({
    Key? key,
    this.textButton = "",
    this.type = PrimaryButtonType.small,
    required this.onPressed,
    this.width = 78
  }) : super(key: key);

  final VoidCallback? onPressed;
  final PrimaryButtonType type;
  final String textButton;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == PrimaryButtonType.small
        ? small()
        : type == PrimaryButtonType.medium
        ? medium() : large();
  }

  Widget small() {
    return SizedBox(
      width: width,
      height: 24,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink01
        ),
        child: Text(
            textButton,
            style: AppFont.componentSmall.copyWith(color: AppColor.accentYellow)
        ),
      ),
    );
  }

  Widget medium() {
    return SizedBox(
      width: width,
      height: 32,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ink01
        ),
        child: Text(
            textButton,
            style: AppFont.componentMediumBold.copyWith(color: AppColor.accentYellow)
        ),
      )
    );
  }

  Widget large() {
    return SizedBox(
      width: width,
      height: 57,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ink01
        ),
        child: Text(
            textButton,
            style: AppFont.componentMediumBold.copyWith(color: AppColor.accentYellow)
        ),
      ),
    );
  }
}
enum PrimaryButtonType {
  small,
  medium,
  large,
}
