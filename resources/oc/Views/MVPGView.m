//
//  MVPGView.m
//  ABIAppOrigin
//
//  Created by ABIMVPGenerator on {CREATED_AT}.
//  Copyright © 2017年 io84. All rights reserved.
//

#import "MVPGView.h"

@interface MVPGView()

@property (nonatomic, strong) UIButton *testButton;

@end

@implementation MVPGView

#pragma mark - instance

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.testButton];
    }
    return self;
}

#pragma mark - life cycle

- (void) layoutSubviews
{
    [super layoutSubviews];
    
    self.testButton.frame = CGRectMake(80, 200, 120, 80);
}

#pragma mark - events

- (void)testButtonDidClick:(UIButton *)sender {
    [self changeTestButtonWithTitle:@"Loading" enabled:NO];

    __block MVPGView* weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^(void){
        
        if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(testButtonDidClick:)]) {
            [weakSelf.delegate testButtonDidClick:sender];
        }
        
    });
}

#pragma mark - public methods

- (void)changeTestButtonWithTitle:(NSString *)title enabled:(BOOL)enabled {
    self.testButton.enabled = enabled;
    [self.testButton setTitle:title forState:UIControlStateNormal];
}

#pragma mark - private methods

#pragma mark - getters and setters

- (UIButton *)testButton {
    if (!_testButton) {
        _testButton = [[UIButton alloc] initWithFrame:CGRectMake(80, 200, 120, 80)];
        [_testButton setBackgroundColor:[UIColor redColor]];
        [_testButton setTitle:@"Test" forState:UIControlStateNormal];
        [_testButton addTarget:self
                        action:@selector(testButtonDidClick:)
              forControlEvents:(UIControlEventTouchUpInside)];
    }
    
    return _testButton;
}

@end
