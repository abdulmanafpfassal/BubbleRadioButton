
## Installing

Add the following to your `pubspec.yaml` file:

    dependencies:
      bubble_radio_button: 0.0.3


## Using Custom Radio Button


```dart
BubbleRadioButton<int>(
    activeColor: Colors.Green,
    inactiveColor: Colors.white,
    activeTextColor: Colors.white,
    inactiveTextColor: Colors.bluegrey,
    fontSize: 18,
    textColor: Colors.white,
    value: "A",
    groupValue: A,
    leading: 'A',
    onChanged: (value) {
    setState(() {
       _value = value!
    });
  },
),
```

## Screenshots


<img src="https://raw.githubusercontent.com/abdulmanafpfassal/content/master/radiobutton.jpg" alt="Loading...">



