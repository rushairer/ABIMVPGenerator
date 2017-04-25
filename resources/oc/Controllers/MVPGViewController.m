//
//  MVPGViewController.m
//  ABIAppOrigin
//
//  Created by ABIMVPGenerator on {CREATED_AT}.
//  Copyright © 2017年 io84. All rights reserved.
//

#import "MVPGViewController.h"
#import "MVPGPresenter.h"
#import "MVPGView.h"

@interface MVPGViewController ()<MVPGPresenterDelegate> {
    MVPGPresenter *_presenter;
    MVPGView *_view;
}

@end

@implementation MVPGViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];

    _presenter = [[MVPGPresenter alloc] init];
    _presenter.delegate = self;
    
    _view = [[MVPGView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:_view];
    
    //Databinding
    [_presenter bindMVPGView:_view];
}

#pragma mark - Notifications

#pragma mark - events

#pragma mark - delegates

#pragma mark - MVPGPresenterDelegate

- (void)somethingFinished {
    NSLog(@"presentViewController or pushViewController");
}

#pragma mark - public methods

#pragma mark - private methods

#pragma mark - getters and setters

@end
