//
//  MVPGView.h
//  ABIAppOrigin
//
//  Created by ABIMVPGenerator on {CREATED_AT}.
//  Copyright © 2017年 io84. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol MVPGViewDelegate;

@interface MVPGView : UIView

@property (nonatomic, weak) id<MVPGViewDelegate> delegate;

- (void)changeTestButtonWithTitle:(NSString *)title enabled:(BOOL)enabled;

@end


@protocol MVPGViewDelegate <NSObject>

@required
- (void)testButtonDidClick:(UIButton *)button;

@end
