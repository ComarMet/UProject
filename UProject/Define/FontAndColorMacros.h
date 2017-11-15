//
//  FontAndColorMacros.h
//  MiAiApp
//
//  Created by ComarMet on 2017/10/19.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

//字体大小和颜色配置

#ifndef FontAndColorMacros_h
#define FontAndColorMacros_h

#pragma mark -  间距区

//默认间距
#define KNormalSpace 12.0f

#pragma mark -  颜色区
//主题色 导航栏颜色
#define CNavBgColor  [UIColor colorWithHexString:@"00AE68"]
//#define CNavBgColor  [UIColor colorWithHexString:@"ffffff"]

#define U_COLOR(Red,Green,Blue) [UIColor colorWithRed:Red/255.f green:Green/255.f blue:Blue/255.f alpha:1.0]

#define CNavBgFontColor  [UIColor colorWithHexString:@"ffffff"]

//默认页面背景色
#define CViewBgColor [UIColor colorWithHexString:@"f2f2f2"]

//button 默认btn
#define CButtonColor  U_COLOR(204,204,204)

#define CButtonSeltectColor  U_COLOR(29,157,255)

//分割线颜色
#define CLineColor  U_COLOR(232,232,232)


//次级字色
#define CFontColor1 [UIColor colorWithHexString:@"1f1f1f"]

//再次级字色
#define CFontColor2 [UIColor colorWithHexString:@"5c5c5c"]


#pragma mark -  字体区


#define FFont1 [UIFont systemFontOfSize:12.0f]

#endif /* FontAndColorMacros_h */
