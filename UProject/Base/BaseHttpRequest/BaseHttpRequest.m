//
//  BaseHttpRequest.m
//  UProject
//
//  Created by ComarMet on 2017/10/23.
//  Copyright © 2017年 ComarMet. All rights reserved.
//

#import "BaseHttpRequest.h"
#import "UrlInterfacedConst.h"
#import "CMNetworkHelper.h"


@implementation BaseHttpRequest

//方法
+ (NSURLSessionTask *)getLoginWithParameters:(id)parameters success:(RequestSuccess)success  failure:(FailureSuccess)failure
{
    // 将请求前缀与请求路径拼接成一个完整的URL
//    NSString *url = [NSString stringWithFormat:@"http://gcs.api.uservices.cn/api/Stormember/login"];
//    return [self requestGetWithURL:url parameters:parameters success:success failure:failure];
    
    
    NSArray * arr = [[NSArray alloc]initWithObjects:[UIImage imageNamed:@"1.png"],nil];
       NSArray * arr1 = [[NSArray alloc]initWithObjects:@"1",nil];
    
    
    return [CMNetworkHelper  uploadImagesWithURL:@"192.168.0.153:8095/api/user/test" parameters:nil name:nil images:arr fileNames:arr1 imageScale:0.5 imageType:@"png" progress:^(NSProgress *progress) {
        
    } success:^(id responseObject) {
        
        NSLog(@"%@",responseObject);
        
    } failure:^(NSError *error) {
        
    } ];
}

+ (NSURLSessionTask *)getCacheLoginWithParameters:(id)parameters successCache:(RequestCaCheSuccess) chache success:(RequestSuccess)success  failure:(FailureSuccess)failure{
    // 将请求前缀与请求路径拼接成一个完整的URL
    NSString *url = [NSString stringWithFormat:@"http://192.168.0.153:8095/api/user/login"];
//    return [self requestPostCacheWithURL:url parameters:parameters successCache:chache success:success failure:failure];
    
    return [self requestPostWithURL:url parameters:parameters success:success failure:failure];
}

/**
 *  GET 不带缓冲的方法
 *
 *  @param parameter    dic
 *  @param success    成功
 *  @param failure    失败
 *
 *  @return 返回实例
 */
+ (NSURLSessionTask *)requestGetWithURL:(NSString *)URL parameters:(NSDictionary *)parameter success:(RequestSuccess)success  failure:(FailureSuccess)failure{
    //添加请求头以及别的东西
    return [CMNetworkHelper GET:URL parameters:parameter success:^(id responseObject) {
         success(responseObject);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

/**
 *  GET 带缓冲的方法
 *
 *  @param parameter    dic
 *  @param successCache    缓存
 *  @param success    成功
 *  @param failure    失败
 *
 *  @return 返回实例
 */
+ (NSURLSessionTask *)requestGetCacheWithURL:(NSString *)URL parameters:(NSDictionary *)parameter successCache:(RequestCaCheSuccess)successCache responseCache:(RequestSuccess)success  failure:(FailureSuccess)failure{
    //添加请求头以及别的东西
    return [CMNetworkHelper GET:URL parameters:parameter responseCache:^(id responseCache) {
        successCache(responseCache);
    } success:^(id responseObject) {
        success(responseObject);
    } failure:^(NSError *error) {
        failure(error);
    }];
}
/**
 *  POST 不带缓冲的方法
 *
 *  @param parameter    dic
 *  @param success    成功
 *  @param failure    失败
 *
 *  @return 返回实例
 */
+ (NSURLSessionTask *)requestPostWithURL:(NSString *)URL parameters:(NSDictionary *)parameter success:(RequestSuccess)success  failure:(FailureSuccess)failure{
    //添加请求头以及别的东西
    return [CMNetworkHelper POST:URL parameters:parameter success:^(id responseObject) {
          success(responseObject);
    } failure:^(NSError *error) {
         failure(error);
    }];
}

/**
 *  POST 带缓冲的方法
 *
 *  @param parameter    dic
 *  @param successCache    缓存
 *  @param success    成功
 *  @param failure    失败
 *
 *  @return 返回实例
 */
+ (NSURLSessionTask *)requestPostCacheWithURL:(NSString *)URL parameters:(NSDictionary *)parameter successCache:(RequestCaCheSuccess)successCache success:(RequestSuccess)success  failure:(FailureSuccess)failure{
     //添加请求头以及别的东西
    return [CMNetworkHelper POST:URL parameters:parameter responseCache:^(id responseCache) {
        successCache(responseCache);
    } success:^(id responseObject) {
        success(responseObject);
        
    } failure:^(NSError *error) {
        failure(error);
    }];
}

@end
