import 'package:flutter/material.dart';

class CustomSelect extends StatefulWidget {
  final List<CustomSelectButton> buttons;
  final Function(dynamic) onChanged;
  final TextStyle textStyle;
  final TextStyle selectStyle;
  final BoxDecoration decoration;
  final BoxDecoration selectDecoration;
  final EdgeInsets paddingContent;
  final double space;
  final dynamic defaultSelect;
  final MainAxisAlignment mainAxisAlignment;

  CustomSelect(
      {Key key,
        @required this.buttons,
        @required this.onChanged,
        this.textStyle,
        this.decoration,
        this.paddingContent,
        this.selectStyle,
        this.defaultSelect,
        this.space = 0,
        this.mainAxisAlignment,
        this.selectDecoration})
      : super(key: key);

  @override
  _CustomSelectState createState() => _CustomSelectState();
}

class _CustomSelectState extends State<CustomSelect> {
  var _selectValue;

  @override
  void initState() {
    if (widget.defaultSelect != null) {
      _selectValue = widget.defaultSelect;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: widget.mainAxisAlignment ?? MainAxisAlignment.start,
      children: _button(),
    );
  }

  _button() {
    final widgets = <Widget>[];
    for (var i = 0; i < widget.buttons.length; i++) {
      final value = widget.buttons[i].value;
      widgets.add(GestureDetector(
        onTap: () {
          widget.onChanged(value);
          setState(() {
            _selectValue = value;
          });
        },
        child: Container(
          padding: widget.paddingContent ?? EdgeInsets.zero,
          margin: EdgeInsets.only(
            left: 0,
            right: i == widget.buttons.length - 1 ? 0 : widget.space,
          ),
          decoration: value == _selectValue
              ? widget.selectDecoration ?? BoxDecoration()
              : widget.decoration ?? BoxDecoration(),
          child: DefaultTextStyle(
            style: value == _selectValue
                ? widget.selectStyle ?? TextStyle(color: Colors.black)
                : widget.textStyle ?? TextStyle(color: Colors.black),
            child: widget.buttons[i],
          ),
        ),
      ));
    }
    return widgets;
  }
}

class CustomSelectButton extends StatelessWidget {
  final Widget child;
  final value;

  CustomSelectButton({Key key, this.child, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}