//
//  MapManager.h
//  UProject
//
//  Created by ComarMet on 2017/11/6.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MapManager : NSObject
SINGLETON_FOR_HEADER(MapManager)
@property (nonatomic,strong)UIViewController *controller;
@property (nonatomic, strong) MAMapView * mapView;
- (void)showMapView;
@end
