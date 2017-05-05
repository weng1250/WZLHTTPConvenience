//
//  WZLHTTPConvenience.m
//  WZLHTTPConvenience
//
//  Created by WengZilin on 2017/4/24.
//  Copyright © 2017年 com.Weng-Zilin. All rights reserved.
//

#import "WZLHTTPConvenience.h"

@implementation WZLHTTPConvenience

+ (NSURL *)baseURL
{
    NSDictionary *environment = [[NSProcessInfo processInfo] environment];
    return [NSURL URLWithString:environment[@"HTTPBIN_BASE_URL"] ?: @"https://httpbin.org"];
}

+ (NSURL *)pngURL
{
    return [[self baseURL] URLByAppendingPathComponent:@"image/png"];
}

+ (NSURLRequest *)pngURLRequest
{
    return [NSURLRequest requestWithURL:[self pngURL]];
}

+ (NSURL *)jpegURL
{
    return [[self baseURL] URLByAppendingPathComponent:@"image/jpeg"];
}

+ (NSURLRequest *)jpegURLRequest
{
    return [NSURLRequest requestWithURL:[self jpegURL]];
}

+ (NSURL *)webpURL
{
    return [[self baseURL] URLByAppendingPathComponent:@"image/webp"];
}

+ (NSURLRequest *)webpURLRequst
{
    return [NSURLRequest requestWithURL:[self webpURL]];
}

+ (NSURL *)svgURL
{
    return [[self baseURL] URLByAppendingPathComponent:@"image/svg"];
}

+ (NSURLRequest *)svgURLRequest
{
    return [NSURLRequest requestWithURL:[self svgURL]];
}

+ (NSURL *)delayURLWithSeconds:(CGFloat)delayInSecond
{
    NSString *delay = [NSString stringWithFormat:@"delay/%@", @(delayInSecond)];
    return [[self baseURL] URLByAppendingPathComponent:delay];
}

+ (NSURLRequest *)delayURLRequestWithSeconds:(CGFloat)delayInSecond
{
    return [NSURLRequest requestWithURL:[self delayURLWithSeconds:delayInSecond]];
}

+ (NSURL *)statusCodeURLWithCode:(NSInteger)code
{
    NSString *statusCode = [NSString stringWithFormat:@"status/%@", @(code)];
    return [[self baseURL] URLByAppendingPathComponent:statusCode];
}

+ (NSURLRequest *)statusCodeURLRequestWithCode:(NSInteger)code
{
    return [NSURLRequest requestWithURL:[self statusCodeURLWithCode:code]];
}

+ (NSURL *)cookieURL
{
    return [[self baseURL] URLByAppendingPathComponent:@"cookie"];
}

+ (NSURLRequest *)cookieURLRequest
{
    return [NSURLRequest requestWithURL:[self cookieURL]];
}

@end
