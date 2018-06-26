//
//  XKPopupControllerManager.h
//  XKPopupController
//
//  Created by 浪漫恋星空 on 2018/6/25.
//  Copyright © 2018年 浪漫恋星空. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XKPopupControllerManager : NSObject

@property (nonatomic, assign) CGFloat spaceToTop;

- (instancetype)initWithSuperViewController:(UIViewController *)superViewController contentView:(UIView *)contentView;
- (void)show;

@end
