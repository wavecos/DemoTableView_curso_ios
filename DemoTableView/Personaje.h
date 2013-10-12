//
//  Personaje.h
//  DemoTableView
//
//  Created by Tekhne on 10/12/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Personaje : NSObject

@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *consola;
@property (nonatomic, strong) NSDate *fechaLanzamiento;
@property (nonatomic, strong) UIImage *imagen;

@end
