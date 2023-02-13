import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/responsive/app_responsive.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/core/widget/text_widget/text_widget.dart';
import 'package:library_package/presentation/sign_up/widgets/sign_up_info.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    this.text,
    this.enabled,
    this.keyboardType,
    this.onSaved,
    this.onChanged,
    this.validator,
    this.textEditingController,
    this.style,
    this.obscureText,
    this.textAlign,
    this.suffixIcon,
    this.hintText,
    this.labelText,
    this.prefixText,
    this.inputFormatters,
  });
  final String? text;
  final bool? enabled;
  final TextInputType? keyboardType;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? textEditingController;
  final TextStyle? style;
  final bool? obscureText;
  final TextAlign? textAlign;
  final Widget? suffixIcon;
  final String? hintText;
  final String? labelText;
  final String? prefixText;
  final int? inputFormatters;
  final bool? showIndicator = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text == null
            ? const SizedBox()
            : Row(
                children: [
                  TextWidget(
                    data: text,
                    fontSize: 12,
                    color: kPrimaryDarkTextColor,
                    inputValue: 2,
                  ),
                  kappWidth5,
                  text == "Username" || text == "Password"
                      ? GestureDetector(
                          onTap: () {

                          },
                          child: Icon(
                            Icons.info_outline,
                            size: 15,
                            color: Colors.grey.shade500,
                          ),
                        )
                      : const SizedBox(),
                  text == "Password"
                      ? Row(
                          children: [
                            kappWidth20,
                            Container(
                              width: kWidth * 0.5,
                              height: 6,
                              decoration: BoxDecoration(
                                color: kPrimaryAuthCardColor,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: kTextFieldBorderColor,
                                  width: .5,
                                ),
                              ),
                              child: const LinearProgressIndicator(
                                value: 3 / 4,
                                minHeight: 6,
                                backgroundColor: kPrimaryAuthCardColor,
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.green),
                              ),
                            ),
                            kappWidth10,
                            const TextWidget(
                              data: "Strong",
                              fontSize: 12,
                              inputValue: 4,
                              color: kHintTextColor,
                            ),
                          ],
                        )
                      : const SizedBox(),
                ],
              ),
        kappHeight10,
        TextFormField(
          inputFormatters: [
            LengthLimitingTextInputFormatter(inputFormatters),
          ],
          enabled: enabled,
          keyboardType: keyboardType ?? TextInputType.text,
          onSaved: onSaved,
          onChanged: onChanged,
          validator: validator,
          controller: textEditingController,
          style: style ?? const TextStyle(color: Colors.black),
          obscureText: obscureText ?? false,
          textAlign: textAlign ?? TextAlign.start,
          cursorColor: Colors.black87,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 14,
              color: kHintTextColor,
            ),
            labelText: labelText,
            helperStyle: const TextStyle(
              color: kHintTextColor,
            ),
            prefixText: prefixText,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: kButtonBackground, width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: kTextFieldBorderColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: kTextFieldBorderColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
