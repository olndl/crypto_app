import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/core/theme/typography.dart';
import 'package:flutter/material.dart';

class TokenDropdownButton extends StatefulWidget {
  const TokenDropdownButton({Key? key}) : super(key: key);

  @override
  State<TokenDropdownButton> createState() => _TokenDropdownButtonState();
}

class _TokenDropdownButtonState extends State<TokenDropdownButton> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Dog';
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.percentOfWidth,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            ColorsGuide.firstButtonGrad,
            ColorsGuide.secondButtonGrad,
            ColorsGuide.thirdButtonGrad
            //add more colors
          ]),
          borderRadius: BorderRadius.circular(40),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
              blurRadius: 5,
            ) //blur radius of shadow
          ],
        ),
        child: DropdownButtonFormField(
          isExpanded: true,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(40),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(40),
            ),
            filled: true,
          ),
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          iconSize: 0.0,
          style: TextStyles.semiBold,
          items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              alignment: Alignment.center,
              value: value,
              child: Text(value,
                  style: TextStyles.semiBold.copyWith(fontSize: 22)),
            );
          }).toList(),
        ),
      ),
    );
  }
}
