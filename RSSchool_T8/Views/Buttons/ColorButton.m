//
//  ColorButton.m
//  RSSchool_T8
//
//  Created by admin on 18.07.21.
//

#import "ColorButton.h"

@interface ColorButton ()
@property (nonatomic, strong) UIView *colorView;
@end

@implementation ColorButton

- (instancetype)initWithFrame:(CGRect)frame andColor:(UIColor *)color {
    self = [super initWithFrame:frame];
    if (self) {
        [self configureWithColor:color];
    }
    return self;
}

- (void)configureWithColor:(UIColor *)color {

    self.layer.cornerRadius = 10;
    self.layer.shadowOffset = CGSizeZero;
    self.layer.shadowRadius = 1;
    self.layer.shadowOpacity = 1;
    self.layer.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
    self.backgroundColor = [UIColor whiteColor];
    
    
    self.colorView = [[UIButton alloc] initWithFrame:CGRectMake(8, 8, 24, 24)];
    self.colorView.backgroundColor = color;
    self.colorView.layer.cornerRadius = 6;
    [self addSubview: self.colorView];
    
}

-(void)colorViewTapped {
    self.colorView.frame = CGRectMake(2, 2, 36, 36);
}


@end
