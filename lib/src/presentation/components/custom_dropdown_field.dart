import 'package:flutter/material.dart';
import 'package:ibomair/constant.dart';

class CustomDropDownField<T> extends StatelessWidget {
  final Icon? leadingIcon;
  final String hint;
  final T? initialItem;
  final List<T> items;
  final double? spacing;
  final Function(T)? onItemSelected;
  final List<DropdownMenuItem<T>>? dropDownItems;
  const CustomDropDownField(
      {this.leadingIcon,
      required this.hint,
      this.initialItem,
      this.dropDownItems,
      this.items = const [],
      this.onItemSelected,
      Key? key,
      this.spacing = 8.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: initialItem,
      hint: Row(
        children: [
          if (leadingIcon != null) ...[
            leadingIcon!,
            SizedBox(width: spacing),
          ],
          Text(
            hint,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: greenColor),
        ),
      ),
      items: dropDownItems ??
          items
              .map((T? value) => DropdownMenuItem(
                    child: Text(
                      value.toString(),
                    ),
                    value: value,
                  ))
              .toList(),
      onChanged: (T? val) {
        if (val != null) {
          if (onItemSelected != null) onItemSelected!(val);
        }
      },
    );
  }
}
