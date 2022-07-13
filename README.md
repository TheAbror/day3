# kilo3
<img width="1440" alt="image" src="https://user-images.githubusercontent.com/60324587/178661643-2008412f-dc05-40da-9407-0533e562e917.png">

What did I learn?

1. TextField new property
```
TextField(
                textAlign: TextAlign.center,
                maxLines: null,
                textInputAction: TextInputAction.done,
                style:
                    TextStyle(fontSize: _fontSize, fontWeight: FontWeight.bold),
              ),
```
textfield allows us to dismiss the keyboard
also, we can put maxlines to null by which we allow the oweflowing text go down forever

2.Slider
```
Slider(
              value: _fontSize,
              min: 18,
              max: 200,
              onChanged: (double newValue) {
                setState(() {
                  _fontSize = newValue;
                });
              },
            ),
```
Slider is easy to use
first we need to provide initial value
put max and min, but! we need to put in between value and onchanged othervise we will receive errors - as i did
in onchanged -> we are getting new value and changing with it the previous value, however do not forget to wrap with setstate!


