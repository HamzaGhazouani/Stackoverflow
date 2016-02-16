//
//  CustomViewWithXib.h
//  CustomViews
//
//  Created by Hamza GHAZOUANI on 11/02/2016.
//  Copyright © 2016 Hamza GHAZOUANI. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  All classes inherite from CustomViewWithXib should have the same xib file name and class name (.h and .m)
 MyCustomView.h
 MyCustomView.m
 MyCustomView.xib
 */

// This allows seeing how your custom views will appear without building and running your app after each change.
IB_DESIGNABLE
@interface CustomViewWithXib : UIView

@end
