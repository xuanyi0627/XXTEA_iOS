//
//  ViewController.m
//  XXTEA_OC
//
//  Created by Xuanyi Liu on 2017/4/19.
//  Copyright © 2017年 Xuanyi Liu. All rights reserved.
//

#import "ViewController.h"
#import "XXTEA.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *text = @"Hello World! 你好，中国！";
    NSString *key = @"1234567890";
    NSString *encrypt_data = [XXTEA encryptStringToBase64String:text stringKey:key];
    NSString *decrypt_data = [XXTEA decryptBase64StringToString:encrypt_data stringKey:key];
    NSLog(@"encrypt_data: %@  ---  decrypt_data: %@", encrypt_data,decrypt_data);
    if ([text isEqual:decrypt_data]) {
        NSLog(@"success!");
    }
    else {
        NSLog(@"failure!");
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
