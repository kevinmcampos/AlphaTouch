//
//  ViewController.m
//  AlphaTouch
//
//  Created by Kevin Campos on 28/02/16.
//  Copyright © 2016 Memorify. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *firstButton = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    firstButton.frame = CGRectMake(100, 100, 100, 44);
    [firstButton setTitle:@"Make 50%" forState:UIControlStateNormal];
    [firstButton addTarget:self
                    action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:firstButton];
    
    
    UIButton *secondButton = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    secondButton.frame = CGRectMake(100, 300, 100, 44);
    [secondButton setTitle:@"Make 100%" forState:UIControlStateNormal];
    [secondButton addTarget:self
                    action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:secondButton];
    
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
    firstLabel.text = @"Hello, welcome to my app!";
    [self.view addSubview:firstLabel];
}

- (void)loadView {
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    
    self.view = view;
}

- (void)buttonPressed:(UIButton *)sender {
    NSLog(@"Button pressed, send: %@", sender);
    
    if ([sender.titleLabel.text isEqualToString:@"Make 50%"]) {
        self.view.alpha = .5;
    } else {
        self.view.alpha = 1;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Started touching the screen");
}

@end
