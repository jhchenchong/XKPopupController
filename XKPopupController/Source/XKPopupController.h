//
//  XKPopupController.h
//  XKPopupController
//
//  Created by 浪漫恋星空 on 2018/6/25.
//  Copyright © 2018年 浪漫恋星空. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XKPopupController : UIViewController

@property (nonatomic, assign) CGFloat spaceToTop;

- (void)show;
- (void)dismiss;

- (void)addContentView:(UIView *)contentView;

@end
