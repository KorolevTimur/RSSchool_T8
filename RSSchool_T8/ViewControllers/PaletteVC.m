//
//  PaletteVC.m
//  RSSchool_T8
//
//  Created by admin on 18.07.21.
//

#import "PaletteVC.h"
#import "ColorButton.h"
#import "SimpleButton.h"

@interface PaletteVC ()

@end

@implementation PaletteVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setFrame:CGRectMake(0, 333, 375, 370)];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view.layer setShadowColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor];
    [self.view.layer setShadowOffset:CGSizeMake(0, 0)];
    [self.view.layer setShadowOpacity:1.0f];
    [self.view.layer setShadowRadius:4.0f];
    self.view.layer.cornerRadius = 35;
        
    UIColor *rsRed = [UIColor colorWithRed:226/255.0 green:27/255.0 blue:44/255.0 alpha:1];
    UIColor *rsDarkBlue = [UIColor colorWithRed:62/255.0 green:23/255.0 blue:204/255.0 alpha:1];
    UIColor *rsGreen = [UIColor colorWithRed:0/255.0 green:124/255.0 blue:55/255.0 alpha:1];
    UIColor *rsGray = [UIColor colorWithRed:128/255.0 green:128/255.0 blue:128/255.0 alpha:1];
    UIColor *rsPurple = [UIColor colorWithRed:157/255.0 green:94/255.0 blue:234/255.0 alpha:1];
    UIColor *rsOrange = [UIColor colorWithRed:255/255.0 green:122/255.0 blue:104/255.0 alpha:1];
    UIColor *rsYellow = [UIColor colorWithRed:255/255.0 green:173/255.0 blue:84/255.0 alpha:1];
    UIColor *rsLightBlue = [UIColor colorWithRed:0/255.0 green:174/255.0 blue:237/255.0 alpha:1];
    UIColor *rsPink = [UIColor colorWithRed:255/255.0 green:119/255.0 blue:162/255.0 alpha:1];
    UIColor *rsBlack = [UIColor colorWithRed:0/255.0 green:46/255.0 blue:60/255.0 alpha:1];
    UIColor *rsDarkGreen = [UIColor colorWithRed:14/255.0 green:55/255.0 blue:24/255.0 alpha:1];
    UIColor *rsBrown = [UIColor colorWithRed:97/255.0 green:15/255.0 blue:16/255.0 alpha:1];
  
    SimpleButton *saveButton = [[SimpleButton alloc] initWithFrame:CGRectMake(250, 20, 85, 32) andTitle:@"Save"];
    ColorButton *redButton = [[ColorButton alloc] initWithFrame:CGRectMake(17, 92, 40, 40) andColor:rsRed];
    ColorButton *darkBlueButton = [[ColorButton alloc] initWithFrame:CGRectMake(77, 92, 40, 40) andColor:rsDarkBlue];
    ColorButton *greenButton = [[ColorButton alloc] initWithFrame:CGRectMake(137, 92, 40, 40) andColor:rsGreen];
    ColorButton *grayButton = [[ColorButton alloc] initWithFrame:CGRectMake(197, 92, 40, 40) andColor:rsGray];
    ColorButton *purpleButton = [[ColorButton alloc] initWithFrame:CGRectMake(257, 92, 40, 40) andColor:rsPurple];
    ColorButton *orangeButton = [[ColorButton alloc] initWithFrame:CGRectMake(317, 92, 40, 40) andColor:rsOrange];
    ColorButton *yellowButton = [[ColorButton alloc] initWithFrame:CGRectMake(17, 152, 40, 40) andColor:rsYellow];
    ColorButton *lightBlueButton = [[ColorButton alloc] initWithFrame:CGRectMake(77, 152, 40, 40) andColor:rsLightBlue];
    ColorButton *pinkButton = [[ColorButton alloc] initWithFrame:CGRectMake(137, 152, 40, 40) andColor:rsPink];
    ColorButton *blackButton = [[ColorButton alloc] initWithFrame:CGRectMake(197, 152, 40, 40) andColor:rsBlack];
    ColorButton *darkGreenButton = [[ColorButton alloc] initWithFrame:CGRectMake(257, 152, 40, 40) andColor:rsDarkGreen];
    ColorButton *brownButton = [[ColorButton alloc] initWithFrame:CGRectMake(317, 152, 40, 40) andColor:rsBrown];
    
    [self.view addSubview:saveButton];
    [self.view addSubview:redButton];
    [self.view addSubview:darkBlueButton];
    [self.view addSubview:greenButton];
    [self.view addSubview:grayButton];
    [self.view addSubview:purpleButton];
    [self.view addSubview:orangeButton];
    [self.view addSubview:yellowButton];
    [self.view addSubview:lightBlueButton];
    [self.view addSubview:pinkButton];
    [self.view addSubview:blackButton];
    [self.view addSubview:darkGreenButton];
    [self.view addSubview:brownButton];
    
    [saveButton addTarget:self action:@selector(saveButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)saveButtonTapped:(UIButton *)sender {
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}




@end
