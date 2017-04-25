//
//  MVPGPresenter.h
//  ABIAppOrigin
//
//  Created by ABIMVPGenerator on {CREATED_AT}.
//  Copyright © 2017年 io84. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPGView.h"

@protocol MVPGPresenterDelegate;


@interface MVPGPresenter : NSObject

@property (nonatomic, weak) id<MVPGPresenterDelegate> delegate;

- (void)bindMVPGView:(MVPGView *)view;

@end

@protocol MVPGPresenterDelegate <NSObject>

@required
- (void)somethingFinished;

@end
