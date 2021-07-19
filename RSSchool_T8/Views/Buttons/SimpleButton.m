//
//  SimpleButton.m
//  RSSchool_T8
//
//  Created by admin on 16.07.21.
//

#import "SimpleButton.h"


@interface SimpleButton ()

@property (nonatomic, strong) UIColor *lightGreenSea;

- (instancetype)initWithFrame:(CGRect)frame andTitle:(NSString *)title;

@end

@implementation SimpleButton

- (instancetype)initWithFrame:(CGRect)frame andTitle:(NSString *)title {
    self = [super initWithFrame:frame];
    if (self) {
        [self configureWithTitle:title];
    }
    return self;
}

- (void)configureWithTitle:(NSString *)title {
    self.lightGreenSea = [[UIColor alloc] initWithRed:33/255.0 green:176/255.0 blue:142/255.0 alpha:1];
    [self setTitleColor:self.lightGreenSea forState:UIControlStateNormal];
    [self setTitle:title forState:UIControlStateNormal];
    self.backgroundColor = [UIColor whiteColor];
    self.layer.cornerRadius = 10;
    self.layer.shadowColor = [[UIColor alloc] initWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.25].CGColor;
    self.layer.shadowRadius = 2;
    self.layer.shadowOpacity = 2;
    self.layer.shadowOffset = CGSizeZero;
    self.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18];
    
}
@end
