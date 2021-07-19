//
//  ViewController.m
//  RSSchool_T8
//
//  Created by admin on 15.07.21.
//

#import "ArtistVC.h"
#import "SimpleButton.h"
#import "DrawingsVC.h"
#import "PaletteVC.h"
#import "CanvasView.h"

@interface ArtistVC ()

@property (nonatomic, strong) CanvasView *canvasView;
@property (nonatomic, strong) UIColor *chillSky;
@property (nonatomic, strong) UIColor *lightGreenSea;
@property (nonatomic, strong) SimpleButton *openPaletteButton;
@property (nonatomic, strong) SimpleButton *drawButton;
@property (nonatomic, strong) SimpleButton *openTimerButton;
@property (nonatomic, strong) SimpleButton *shareButton;

@property (strong, nonatomic) DrawingsVC *drawings;
@property (strong, nonatomic) PaletteVC *palette;

@end

@implementation ArtistVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureElements];
    [self setupConstraints];

}

-(void)configureElements {
    
    self.drawings = [DrawingsVC new];
    self.palette = [PaletteVC new];
    
    self.chillSky = [[UIColor alloc] initWithRed:0/255.0 green:178/255.0 blue:255/255.0 alpha:1];
    self.lightGreenSea = [[UIColor alloc] initWithRed:33/255.0 green:176/255.0 blue:142/255.0 alpha:1];
    
    self.canvasView = [[CanvasView alloc] initWithFrame:CGRectZero];
    self.canvasView.layer.cornerRadius = 8;
    self.canvasView.backgroundColor = [UIColor whiteColor];
    [self.canvasView.layer setShadowColor:[self.chillSky colorWithAlphaComponent:0.25].CGColor];
    [self.canvasView.layer setShadowRadius:4.0];
    [self.canvasView.layer setShadowOpacity:1.0f];
    [self.canvasView.layer setShadowOffset:CGSizeZero];

    
    self.openPaletteButton = [[SimpleButton alloc] initWithFrame:CGRectZero andTitle:@"Open Palette"];
    self.drawButton = [[SimpleButton alloc] initWithFrame:CGRectZero andTitle:@"Draw"];
    self.openTimerButton = [[SimpleButton alloc] initWithFrame:CGRectZero andTitle:@"Open Timer"];
    self.shareButton = [[SimpleButton alloc] initWithFrame:CGRectZero andTitle:@"Share"];
    
    self.navigationItem.title = @"Artist";
    [self.navigationController.navigationBar setTitleTextAttributes:@{
            NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17.0f]
        }];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Drawings"
                                                                                  style:UIBarButtonItemStylePlain
                                                                                 target:self
                                                                                 action:@selector(accessDrawings:)];
    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:@{
            NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17.0f] }
                                                              forState:UIControlStateNormal];
    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:@{
            NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17.0f] }
                                                              forState:UIControlStateHighlighted];
    self.navigationItem.rightBarButtonItem.tintColor = self.lightGreenSea;
    
    [self.openPaletteButton addTarget:self action:@selector(paletteButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.drawButton addTarget:self action:@selector(drawButtonTapped:) forControlEvents:UIControlEventTouchUpInside];

}

-(void)setupConstraints {
    
    [self.view addSubview:self.canvasView];
    self.canvasView.translatesAutoresizingMaskIntoConstraints = false;
    [self.canvasView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.canvasView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:104].active = YES;
    [self.canvasView.widthAnchor constraintEqualToConstant:300].active = YES;
    [self.canvasView.heightAnchor constraintEqualToConstant:300].active = YES;
    
    [self.view addSubview:self.openPaletteButton];
    self.openPaletteButton.translatesAutoresizingMaskIntoConstraints = false;
    [self.openPaletteButton.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20].active = YES;
    [self.openPaletteButton.topAnchor constraintEqualToAnchor:self.canvasView.bottomAnchor constant:50].active = YES;
    [self.openPaletteButton.widthAnchor constraintEqualToConstant:163].active = YES;
    [self.openPaletteButton.heightAnchor constraintEqualToConstant:32].active = YES;
    
    [self.view addSubview:self.drawButton];
    self.drawButton.translatesAutoresizingMaskIntoConstraints = false;
    [self.drawButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-41].active = YES;
    [self.drawButton.topAnchor constraintEqualToAnchor:self.canvasView.bottomAnchor constant:50].active = YES;
    [self.drawButton.widthAnchor constraintEqualToConstant:91].active = YES;
    [self.drawButton.heightAnchor constraintEqualToConstant:32].active = YES;
    
    [self.view addSubview:self.openTimerButton];
    self.openTimerButton.translatesAutoresizingMaskIntoConstraints = false;
    [self.openTimerButton.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20].active = YES;
    [self.openTimerButton.topAnchor constraintEqualToAnchor:self.openPaletteButton.bottomAnchor constant:20].active = YES;
    [self.openTimerButton.widthAnchor constraintEqualToConstant:151].active = YES;
    [self.openTimerButton.heightAnchor constraintEqualToConstant:32].active = YES;
    
    [self.view addSubview:self.shareButton];
    self.shareButton.translatesAutoresizingMaskIntoConstraints = false;
    [self.shareButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-41].active = YES;
    [self.shareButton.topAnchor constraintEqualToAnchor:self.drawButton.bottomAnchor constant:20].active = YES;
    [self.shareButton.widthAnchor constraintEqualToConstant:95].active = YES;
    [self.shareButton.heightAnchor constraintEqualToConstant:32].active = YES;
    
}

-(void)accessDrawings:(id)sender {
    [self.navigationController pushViewController:self.drawings animated:YES];
}

-(void)paletteButtonTapped:(UIButton *)sender {
    [self addChildViewController:self.palette];
    [self.view addSubview:self.palette.view];
    [self.palette didMoveToParentViewController:self];
}
-(void)drawButtonTapped:(UIButton *)sender {
    CAShapeLayer* sublayer = [CAShapeLayer new];
    sublayer.path = [self.canvasView tree].CGPath;
    sublayer.fillColor = UIColor.clearColor.CGColor;
    sublayer.strokeColor = UIColor.blackColor.CGColor;
    [self.canvasView.layer addSublayer:sublayer];
}

@end
