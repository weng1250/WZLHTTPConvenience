//
//  WZLHTTPConvenience.h
//  WZLHTTPConvenience
//
//  Created by WengZilin on 2017/4/24.
//  Copyright © 2017年 com.Weng-Zilin. All rights reserved.
//
//  For more service, please refer to https://httpbin.org/. 

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WZLHTTPConvenience : NSObject

+ (NSURL *)baseURL;


+ (NSURL *)pngURL;
+ (NSURLRequest *)pngURLRequest;

+ (NSURL *)jpegURL;
+ (NSURLRequest *)jpegURLRequest;

+ (NSURL *)webpURL;
+ (NSURLRequest *)webpURLRequst;

+ (NSURL *)svgURL;
+ (NSURLRequest *)svgURLRequest;

+ (NSURL *)delayURLWithSeconds:(CGFloat)delayInSecond;
+ (NSURLRequest *)delayURLRequestWithSeconds:(CGFloat)delayInSecond;

+ (NSURL *)statusCodeURLWithCode:(NSInteger)code;
+ (NSURLRequest *)statusCodeURLRequestWithCode:(NSInteger)code;

+ (NSURL *)cookieURL;
+ (NSURLRequest *)cookieURLRequest;


@end
