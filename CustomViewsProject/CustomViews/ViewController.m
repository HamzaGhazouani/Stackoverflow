//
//  ViewController.m
//  CustomViews
//
//  Created by Hamza GHAZOUANI on 11/02/2016.
//  Copyright © 2016 Hamza GHAZOUANI. All rights reserved.
//

#import "ViewController.h"
#import "PickerView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet PickerView *pickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.pickerView.dataPicker addTarget:self action:@selector(showSelectedDate)     forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)showSelectedDate {
    NSLog(@"%@", self.pickerView.dataPicker.date);
}
@end
