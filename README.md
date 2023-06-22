
<img src="https://raw.github.com/ROUNAK-K-JHA-2002/custom-form-field/main/images/repo_image.jpg"   >

[comment]: # (https://github.com/ellerbrock/open-source-badges/)

# Flutter custom Form Fields
- Ever bored of designing repetative Form fields in Flutter Apps? 
- Same designs in multiple projects ? 
**Flutter custom Form Fields** come to your rescue.


Flutter custom Form Fields comes with predefined Form Fields Styles, which is a light-weight package  providing you cleaner code, reusable prestyled Form fields.




## Usage

### Set the dependency

```
dependencies:
  custom_form_fields: <latest-version>
```

### Install

```
flutter pub get
```

### Import it

```dart
import 'package:custom_field_styles/custom_field_styles.dart';
```

### Use it

```dart
return Scaffold(
      body: SafeArea(
          child: Center(
              child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Modern Text Field",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            /// Custom Form Text Fields , Change [fieldstyle] to change designs
            ///Required Fields : [controller] 
            CustomTextField(
              controller: controller,
              fieldStyle: FieldStyle.modern,
              prefixIcon: const Icon(Icons.person_2),
              suffixIcon: const Icon(Icons.cancel),
            ),
             const SizedBox(
              height: 20,
            ),
            const Text(
              "Gradient  Button Field",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
             /// Custom Form Buttons , Change [buttonstyle] to change designs
             ///Required Fields : [child] 
            CustomButtons(
              onTap: () {
                debugPrint("Hello , Button Pressed");
              },
              buttonStyle: CustomStyle.gradient,
              firstGradientColor: Colors.purple,
              secondGradientColor: Colors.pink,
              enableShadow: true,
              child: const Text(
                "Button",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ))),
    );
```

* Required fields are : controller for Textfields and child for Buttons.

For more details see the **example**.


# Images 
 Form Fields 

- Simple Text Field
<img src="https://raw.github.com/ROUNAK-K-JHA-2002/custom-form-field/main/images/simple_text_field.jpg"   height="200">
- Modern Text Field
<img src="https://raw.github.com/ROUNAK-K-JHA-2002/custom-form-field/main/images/modern_text_field.jpg"   height="200">
- Passsword Text Field
<img src="https://raw.github.com/ROUNAK-K-JHA-2002/custom-form-field/main/images/password_text_field.jpg"   height="200">


Form Buttons
 
- Simple Button
<img src="https://raw.github.com/ROUNAK-K-JHA-2002/custom-form-field/main/images/simpleButton.jpg"   height="200">
- Modern Text Field
<img src="https://raw.github.com/ROUNAK-K-JHA-2002/custom-form-field/main/images/modernButton.jpg"   height="200">
- Gradient Text Field
<img src="https://raw.github.com/ROUNAK-K-JHA-2002/custom-form-field/main/images/gradientButton.jpg"   height="200">



## Contributing

Contributions are always welcome!

See `CONTRIBUTING.md` for ways to get started.


## FAQ

#### Are the Styles pre-applied?

Yes, Some of the basic styles are pre-applied , to ease developement , you can also manually change specific styles.

#### Some styles are not working in some FieldStyles ?

We have restricted some styles in some specific Fieldstyles to maintain disctintiveness among each Fieldstyles.

#### I have some creative styles in my mind how can I add them in this package ?

Please refer `CONTRIBUTING.md`.

#### Are only this much styles available ?

No, I am working on more styles. Will be adding soon.

## Feedback

If you have any feedback, please reach out to us at developer.dextrix@gmail.com


## Support


[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/dextrixDev)

