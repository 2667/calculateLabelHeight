# Calculate Label Height

![gif of demo](http://github.com/shayinqi/calculateLabelHeight/raw/master/gif/textHeight.gif)

###HOW TO USE
Just copy CalTextHeight file to your project 

import header file
```objective-c
#import "UILabel+calculateHeightAndRect.h"
```

###Usage
Calculate Label Height with parameter
```objective-c
/**
 *  calculate Label Height for String content
 *
 *  @param text     text context 
 *  @param fontSize font size in Label
 *  @param width    Label width
 *
 *  @return height of assumed label
 */
+(CGFloat)CalculateHeightForFullDisplayText:(NSString*)text
                                       Font:(int)fontSize
                                  textWidth:(CGFloat)width;
```

Make a Label for fully display its content
```objective-c
/**
 *  Label with Full display with its text
 *
 *  @param X        X position
 *  @param Y        Y position
 *  @param width    Label_Width
 *  @param text     Label.text
 *  @param fontSize font_size
 *
 *  @return Label
 */
-(instancetype)initWithPositionX:(CGFloat)X
                       PositionY:(CGFloat)Y
                           Width:(CGFloat)width
                 FullTextDisplay:(NSString*)text
                        FontSize:(int)fontSize;
                        
```

Change label size for fully display its content
```objective-c
/**
 *  change you label size for fully display its content 
 *
 *  @param myLabel your Label
 */
+(void)ReSetLabelByFullyDisplay:(UILabel*)myLabel;

```

### See more usage in demo

> 1. 一行解决所有label高度烦恼

> 2. demo里都有中文注释
