//
//  DrawingsVC.m
//  RSSchool_T8
//
//  Created by admin on 18.07.21.
//

#import "DrawingsVC.h"
#import "SimpleButton.h"

@interface DrawingsVC ()

@property (nonatomic, strong) SimpleButton *planetButton;
@property (nonatomic, strong) SimpleButton *headButton;
@property (nonatomic, strong) SimpleButton *treeButton;
@property (nonatomic, strong) SimpleButton *landscapeButton;

@end

@implementation DrawingsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureElements];
    [self setupConstraints];
}

-(void)configureElements {
    
    self.planetButton = [[SimpleButton alloc] initWithFrame:CGRectZero andTitle:@"Planet"];
    self.headButton = [[SimpleButton alloc] initWithFrame:CGRectZero andTitle:@"Head"];
    self.treeButton = [[SimpleButton alloc] initWithFrame:CGRectZero andTitle:@"Tree"];
    self.landscapeButton = [[SimpleButton alloc] initWithFrame:CGRectZero andTitle:@"Landscape"];
    
    self.navigationItem.title = @"Darwings";
        [self.navigationController.navigationBar setTitleTextAttributes:@{
            NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17.0f]
        }];
    
    [self.navigationItem.backBarButtonItem setTitleTextAttributes:@{
            NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17.0f] }
                                                              forState:UIControlStateNormal];
    [self.navigationItem.backBarButtonItem setTitleTextAttributes:@{
            NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17.0f] }
                                                              forState:UIControlStateHighlighted];
    self.navigationItem.backBarButtonItem.tintColor = [[UIColor alloc] initWithRed:33/255.0 green:176/255.0 blue:142/255.0 alpha:1];
    

    
}

-(void)setupConstraints {
    
    [self.view addSubview:self.planetButton];
    self.planetButton.translatesAutoresizingMaskIntoConstraints = false;
    [self.planetButton.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:114].active = YES;
    [self.planetButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.planetButton.widthAnchor constraintEqualToConstant:200].active = YES;
    [self.planetButton.heightAnchor constraintEqualToConstant:40].active = YES;
    
    [self.view addSubview:self.headButton];
    self.headButton.translatesAutoresizingMaskIntoConstraints = false;
    [self.headButton.topAnchor constraintEqualToAnchor:self.planetButton.bottomAnchor constant:15].active = YES;
    [self.headButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.headButton.widthAnchor constraintEqualToConstant:200].active = YES;
    [self.headButton.heightAnchor constraintEqualToConstant:40].active = YES;
    
    [self.view addSubview:self.treeButton];
    self.treeButton.translatesAutoresizingMaskIntoConstraints = false;
    [self.treeButton.topAnchor constraintEqualToAnchor:self.headButton.bottomAnchor constant:15].active = YES;
    [self.treeButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.treeButton.widthAnchor constraintEqualToConstant:200].active = YES;
    [self.treeButton.heightAnchor constraintEqualToConstant:40].active = YES;
    
    [self.view addSubview:self.landscapeButton];
    self.landscapeButton.translatesAutoresizingMaskIntoConstraints = false;
    [self.landscapeButton.topAnchor constraintEqualToAnchor:self.treeButton.bottomAnchor constant:15].active = YES;
    [self.landscapeButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.landscapeButton.widthAnchor constraintEqualToConstant:200].active = YES;
    [self.landscapeButton.heightAnchor constraintEqualToConstant:40].active = YES;
    
}

@end
