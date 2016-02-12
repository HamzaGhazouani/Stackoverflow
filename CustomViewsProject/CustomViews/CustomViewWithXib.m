//
//  CustomViewWithXib.m
//  CustomViews
//
//  Created by Hamza GHAZOUANI on 11/02/2016.
//  Copyright © 2016 Hamza GHAZOUANI. All rights reserved.
//

#import "CustomViewWithXib.h"

@implementation CustomViewWithXib

#pragma mark - init methods

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // load view frame XIB
        [self commonSetup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        // load view frame XIB
        [self commonSetup];
    }
    return self;
}

#pragma mark - setup view

- (UIView *)loadViewFromNib {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    
    //  An exception will be thrown if the xib file with this class name not found,
    UIView *view = [[bundle loadNibNamed:NSStringFromClass([self class])  owner:self options:nil] firstObject];
    return view;
}

- (void)commonSetup {
    UIView *nibView = [self loadViewFromNib];
    nibView.frame = self.bounds;
    // the autoresizingMask will be converted to constraints, the frame will match the parent view frame
    nibView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    // Adding nibView on the top of our view
    [self addSubview:nibView];
}


@end
