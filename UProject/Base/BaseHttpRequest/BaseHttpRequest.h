//
//  BaseHttpRequest.h
//  UProject
//
//  Created by ComarMet on 2017/10/23.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import <Foundation/Foundation.h>

//请求成功的block
typedef void (^RequestSuccess)(id response);
//带缓存的block
typedef void (^RequestCaCheSuccess)(id responseCache);
//失败blcok
typedef void (^FailureSuccess)(NSError *error);

@interface BaseHttpRequest : NSObject


+ (NSURLSessionTask *)getLoginWithParameters:(id)parameters success:(RequestSuccess)success  failure:(FailureSuccess)failure;

+ (NSURLSessionTask *)getCacheLoginWithParameters:(id)parameters successCache:(RequestCaCheSuccess) chache success:(RequestSuccess)success  failure:(FailureSuccess)failure;



@end

