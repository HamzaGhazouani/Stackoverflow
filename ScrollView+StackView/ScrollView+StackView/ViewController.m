//
//  ViewController.m
//  ScrollView+StackView
//
//  Created by Hamza GHAZOUANI on 16/02/2016.
//  Copyright © 2016 Hamza GHAZOUANI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIStackView *stackView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [self.scrollView setContentOffset:CGPointZero];
}

- (void)viewDidLayoutSubviews {
    // scroll to last item
    CGPoint endPoint = CGPointMake(self.scrollView.contentSize.width, self.scrollView.contentSize.height);
    [self.scrollView setContentOffset:endPoint];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)removeLastSubview:(UIButton *)sender {
    if ([self.stackView.arrangedSubviews count] == 1) {
        return;
        // if we remove the first view, we remove the height and width constraints, so the new views not will be shown because the frame is equal to CGRectZero
    }
    
    UIView *lastView = self.stackView.arrangedSubviews.lastObject;
    [lastView removeFromSuperview];
}

- (IBAction)addSubview:(id)sender {
    UIView *view = [[UIView alloc] init];
    
    CGFloat red = arc4random_uniform(255) / 255.0;
    CGFloat green = arc4random_uniform(255) / 255.0;
    CGFloat blue = arc4random_uniform(255) / 255.0;
    UIColor *randomColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    view.backgroundColor = randomColor;
    
    [self.stackView addArrangedSubview:view];
    
}

@end
