//
//  HXXibView.m
//  XibDemo
//
//  Created by miaios on 15/11/17.
//  Copyright © 2015年 miaios. All rights reserved.
//

#import "HXXibView.h"

@implementation HXXibView

#pragma mark - Init Methods
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self xibSetup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self xibSetup];
    }
    return self;
}

- (void)setText:(NSString *)text {
    _label.text = text;
}
- (NSString *)text {
    return _label.text;
}


#pragma mark - Private Methods
- (void)xibSetup {
    UIView *view = [self loadViewFromNib];
    view.frame = self.bounds;
    [self addSubview:view];
}

- (UIView *)loadViewFromNib {
    NSBundle *bundle = [NSBundle bundleForClass:[HXXibView class]];
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([HXXibView class]) bundle:bundle];
    UIView *view = [[nib instantiateWithOwner:self options:nil] firstObject];
    return view;
}

@end
