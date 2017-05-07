//
//  ViewController.m
//  WZLHTTPConvenience
//
//  Created by WengZilin on 2017/4/24.
//  Copyright © 2017年 com.Weng-Zilin. All rights reserved.
//

#import "ViewController.h"
#import "WZLHTTPConvenience.h"
#import <AFNetworking.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) AFHTTPSessionManager *sessonManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sessonManager = [[AFHTTPSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    self.sessonManager.responseSerializer = [AFHTTPResponseSerializer serializer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionRequestImage:(id)sender {
    __weak typeof (self) weakSelf = self;
    
    // get png url request from WZLHTTPConvenience
    NSURLRequest *pngRequest = [WZLHTTPConvenience pngURLRequest];
    NSURLSessionDataTask *task = [self.sessonManager dataTaskWithRequest:pngRequest uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        __strong typeof(self) strongSelf = weakSelf;
        if ([responseObject isKindOfClass:[NSData class]]) {
            UIImage *image = [[UIImage alloc] initWithData:responseObject];
            [strongSelf.imageView setImage:image];
            
        }
    }];
    [task resume];
}

- (IBAction)actionRequestWithDelay:(id)sender{
    NSLog(@"***Start delay request at date:%@", [NSDate date]);
    // get delay url request from WZLHTTPConvenience
    NSURLRequest *delayRequest = [WZLHTTPConvenience delayURLRequestWithSeconds:5];
    NSURLSessionDataTask *task = [self.sessonManager dataTaskWithRequest:delayRequest uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        NSLog(@"**Request response at date:%@", [NSDate date]);
    }];
    [task resume];
}

- (IBAction)actionRequestWithErrorCode:(id)sender {
    NSURLRequest *errorRequest = [WZLHTTPConvenience statusCodeURLRequestWithCode:418];
    NSURLSessionDataTask *task = [self.sessonManager dataTaskWithRequest:errorRequest uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
    }];
    [task resume];
}

@end
