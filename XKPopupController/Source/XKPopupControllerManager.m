//
//  XKPopupControllerManager.m
//  XKPopupController
//
//  Created by 浪漫恋星空 on 2018/6/25.
//  Copyright © 2018年 浪漫恋星空. All rights reserved.
//

#import "XKPopupControllerManager.h"
#import "XKPopupController.h"

@interface XKPopupControllerManager ()

@property (nonatomic, strong) UIViewController *superViewController;
@property (nonatomic, strong) UIView *contentView;

@property (nonatomic, strong) XKPopupController *popupController;

@end

@implementation XKPopupControllerManager

- (instancetype)initWithSuperViewController:(UIViewController *)superViewController contentView:(UIView *)contentView {
    if (self = [super init]) {
        _superViewController = superViewController;
        _contentView = contentView;
    }
    return self;
}

- (void)show {
    self.popupController.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self.superViewController presentViewController:self.popupController animated:NO completion:^{
        [self.popupController addContentView:self.contentView];
        [self.popupController show];
    }];
}

- (void)dismiss {
    [self.popupController dismiss];
}

- (void)setSpaceToTop:(CGFloat)spaceToTop {
    _spaceToTop = spaceToTop;
    self.popupController.spaceToTop = spaceToTop;
}

- (XKPopupController *)popupController {
    if (!_popupController) {
        _popupController = [[XKPopupController alloc] init];
    }
    return _popupController;
}

@end
