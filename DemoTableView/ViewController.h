//
//  ViewController.h
//  DemoTableView
//
//  Created by Tekhne on 10/12/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Personaje.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *personajes;

@end
