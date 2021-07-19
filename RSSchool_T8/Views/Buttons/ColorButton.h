//
//  ColorButton.h
//  RSSchool_T8
//
//  Created by admin on 18.07.21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ColorButton : UIButton

- (instancetype)initWithFrame:(CGRect)frame andColor:(UIColor *)color;
- (void)colorViewTapped;
@end

NS_ASSUME_NONNULL_END
