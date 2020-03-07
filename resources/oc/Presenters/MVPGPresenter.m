//
//  MVPGPresenter.m
//  ABIAppOrigin
//
//  Created by ABIMVPGenerator on {CREATED_AT}.
//  Copyright © 2017年 io84. All rights reserved.
//

#import "MVPGPresenter.h"

@interface MVPGPresenter()<MVPGViewDelegate> {
    __weak MVPGView *_view;
}

@end

@implementation MVPGPresenter

#pragma mark - instance

#pragma mark - delegates

#pragma mark - MVPGViewDelegate

- (void)testButtonDidClick:(UIButton *)button {
    NSLog(@"testButtonDidClick");
    [_view changeTestButtonWithTitle:@"Test" enabled:YES];
    
    __block MVPGPresenter* weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^(void){
        
        if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(somethingFinished)]) {
            [weakSelf.delegate somethingFinished];
        }
        
    });
    
}

#pragma mark - public methods

- (void)bindMVPGView:(MVPGView *)view {
    _view = view;
    _view.delegate = self;
}

- (void)unbindView {
    [_view removeFromSuperview];
    _view = nil;
}

#pragma mark - private methods

#pragma mark - getters and setters

@end
