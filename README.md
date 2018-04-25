# iOS Material Library in Titanium

Use the native [Material UI/UX framework](https://github.com/CosmicMind/Material) in Titanium!

> This module project contains pure Swift libraries. A proof of concept includes an example of using the `RaisedButton` API.
For more API's, submit a pull request to expose components like `BottomNavigationView`, `Snackbar` or `MotionAnimation`.

## Requirements

- [x] Swift 4.1+ (embedded into the hook in `hooks/`), iOS 8+
- [x] Titanium SDK 6.3.0+ (7.1.0+ recommended)


## API'S

### Root-Module

#### Methods

##### `createRaisedButton(args)`

Creates a new raised button.

##### `createTextField(args)`

Creates a new text field.

##### `createCardView(args)`

Creates a new card view.

---

### `RaisedButton` (extends `Ti.UI.View`)

<img src=".github/raised-button.gif" height="80" />

#### Additional Properties

- `title` (`String`)
- `color` (`String`)
- `selectedColor` (`String`)
- `pulseColor` (`String`)
- `image` (`String`)

---

### `CardView` (extends `Ti.UI.View`)

#### Additional Properties

- `contentView` (`Ti.UI.View`)
- `contentViewInsets` (`Dictionary`)
- `backgroundColor` (`String`)
- `cornerRadius` (`Number`)

---

### `TextField` (extends `Ti.UI.View`)

<img src=".github/text-field.gif" height="100" />

#### Additional Properties

- `value` (`String`)
- `hintText` (`String`)
- `hintTextColor` (`String`)
- `font` (`Dictionary`)

#### Events

- `change`
- `focus`
- `blur`

## Compile native libraries

### iOS

This project uses the following two Swift dependencies:

- Material
- Motion

This projects resolves all dependencies already for you, including setting the Swift version using the hook placed in `hooks/`.

Right now, Titanium only supports CocoaPods for Hyperloop, so in order to use it for classic modules, you need
to create universal "fat" frameworks and strip the unused architectures again (this is taken care of by the SDK already).
A universal library can be created by grabbing the frameworks from `Debug-iphonesimulator` (Simulator architectures) 
and `Debug-iphoneos` (Device architectures) and combine them using the following commands:

0. Install CocoaPods (`sudo gem install cocoapods`) and run `pod install` in the `native/` directory of this repository
1. Create the following folder structures: `sim/`, `device/` & `universal/`
2. Copy the .framework files from `Debug-iphonesimulator` to `sim/`
3. Copy the .framework files from `Debug-iphoneos` to `device/`
4. Copy the .framework files from `device` to `universal/` (they are the base for universal frameworks)
5. Copy the `Modules/*.swiftmodule` to the universal directory of the framework
6. Use the following command to merge the sim- and device-frameworks together:
```bash
lipo -create -output universal/<name>.framework/<name> sim/<name>.framework/<name> device/<name>.framework/<name>
```
7. Replace the final frameworks in `<module-project>/platform`
8. Make a pull request to this repo, so others can benefit from it as well

These steps are based on a [Shell Script](https://gist.github.com/cromandini/1a9c4aeab27ca84f5d79) used natively.

Note: In the future, this will all be done by CocoaPods. Make sure to follow [TIMOB-25927](https://jira.appcelerator.org/browse/TIMOB-25927) regarding Swift support in the SDK.

## Example

```js
var Material = require('ti.material');

var win = Ti.UI.createWindow({
  backgroundColor: '#fff'
});

var btn = Material.createRaisedButton({
  width: 300,
  height: 40,
  title: 'Titanium rocks!'
});

btn.addEventListener('click', function() {
  alert('YEY!');
});

win.add(btn);
win.open();

```

## Author

Hans Knöchel ([@hansemannnn](https://twitter.com/hansemannnn) / [Web](http://hans-knoechel.de))

## License

MIT

## Contributing

Code contributions are greatly appreciated, please submit a new [Pull-Request](https://github.com/hansemannn/titanium-material/pull/new/master)!
