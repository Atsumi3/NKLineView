NKLineView
===========

NKLineView is using swift.

Example of use.
![Animation](https://raw.githubusercontent.com/Atsumi3/NKLineView/master/ScreenShots/anim.gif)
---------
### How to use NKLineView
```swift
let lineView = NKLineView(view1: view1, view2: view2);
lineView.addSubview(self.nkLineView!);

// if NeedLineUpdate
lineView.update();

/// setting
// lineColor (UIColor)  default: UIColor.blueColor()
lineView.setStrokeColor(UIColor.blackColor());

// lineWidth (CGFloat)  defau;t: 12
lineView.setStrokeWidth(2);

// zPosition (CGFloat)  default: -2
lineView.setZPosition(10);
```
### LICENSE
---------

The MIT License (MIT)

Copyright (c) 2016 Atsumi3

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
