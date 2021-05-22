# Ripple Button

[![Pub Version](https://img.shields.io/pub/v/ripple_button)](https://pub.dev/packages/ripple_button)


A fully customizable button with material ripple effect. Easy to use having some pre-defined button types.

Here is the example screenshot:

<img src="https://user-images.githubusercontent.com/6011385/119212099-a74d9780-ba8c-11eb-95b6-f87bbe0d7317.png"  width="178.75" height="366.75">

<img src="https://user-images.githubusercontent.com/6011385/119212109-b6cce080-ba8c-11eb-82d4-cbd7ebf61b81.gif"  width="178.75" height="366.75">

## RippleButton

#### `text`

Change the text from the button

propType: `String`

**REQUIRED!**

#### `onPressed`

Expects a function that will be executed on button press. If null, button will not be clickable. To apply disable design use **isEnabled**

propType: `Function()?`

#### `isEnabled`

This will change the button design and behaviour to show if it is disabled or enabled. 

If false, this will change background color to `disabled` (see `RippleButtonColor`), reduce opacity. The button will also not be clickable.

On activation or deativation it will do a bouncing animation to gain users attention.


propType: `bool`

#### `padding`

Adds a padding to the button.

propType: `EdgeInsets`

#### `style`
 
This will change the style form the Ripple Button
Send values to customize the Ripple Button Widget

propType: `RippleButtonStyle`

#### `type`

This are pre-config designs for the ripple button
This is optional, if not set the widget will use your design for the button

propType: `RippleButtonType`

## RippleButtonStyle

#### `color`

Expects a RippleButtonColor
This will change the color to the ripple button

propType: `RippleButtonColor`

#### `elevation`

This will change the elevation to the ripple button

propType: `double`

#### `height`

This will change the height to the ripple button

propType: `double`

#### `text`

This will change the text style of the text inside the ripple button

propType: `TextStyle`

#### `border`

This will add a border to the ripple button

propType: `double`

## RippleButtonColor

#### `background`
 
This will change the background color from the button

propType: `Color`

#### `foreground`

This will change the foreground color from the button

#### `disabled`

This will change the disabled color from the button

propType: `Color`

#### `shadow`

This will change the shadow color from the button

propType: `Color`

## RippleButtonType

 **YELLOW:**
 
  <img width="310" alt="Captura de Tela 2021-05-02 às 19 46 39" src="https://user-images.githubusercontent.com/6011385/116830217-1ebf9380-ab7f-11eb-9657-0e61be9393c8.png">
  
  **AMBER:**
  
   <img width="304" alt="Captura de Tela 2021-05-02 às 19 47 09" src="https://user-images.githubusercontent.com/6011385/119211928-9cdece00-ba8b-11eb-9097-c6bc49a63c9a.png">

  **WHITE_TRANSLUCENT:**
  
  <img width="304" alt="Captura de Tela 2021-05-02 às 19 47 09" src="https://user-images.githubusercontent.com/6011385/116830228-3139cd00-ab7f-11eb-833c-1db7a668d886.png">
  
  **BLUE_TRANSLUCENT:**

<img width="309" alt="Captura de Tela 2021-05-02 às 19 46 53" src="https://user-images.githubusercontent.com/6011385/116830224-27b06500-ab7f-11eb-89c3-0350320aa6dc.png">


 
  **NONE:**
  Your Custom Design

## License

See [LICENSE.md](LICENSE.md)

