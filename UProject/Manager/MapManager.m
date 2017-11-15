//
//  MapManager.m
//  UProject
//
//  Created by ComarMet on 2017/11/6.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "MapManager.h"

@interface MapManager()<MAMapViewDelegate,AMapSearchDelegate,AMapNaviWalkManagerDelegate,AMapNaviWalkViewDelegate,AMapNaviDriveViewDelegate,AMapNaviDriveManagerDelegate>
@end

@implementation MapManager
SINGLETON_FOR_CLASS(MapManager)
- (void)showMapView{
    _mapView = [[MAMapView alloc]initWithFrame:CGRectMake(100,100, KScreenWidth, KScreenHeight)];
    [self.controller.view addSubview:_mapView];
    _mapView.showsUserLocation = YES;
    _mapView.userTrackingMode = MAUserTrackingModeFollow;
    [_mapView setZoomLevel:15.1 animated:YES];
    _mapView.delegate = self;
    _mapView.desiredAccuracy = kCLLocationAccuracyBest;
    //设置定位距离
    _mapView.distanceFilter = 5.0f;
}


@end
