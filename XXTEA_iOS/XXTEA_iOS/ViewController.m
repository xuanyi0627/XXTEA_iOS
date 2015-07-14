//
//  ViewController.m
//  XXTEA_iOS
//
//  Created by 宣佚 on 15/7/14.
//  Copyright (c) 2015年 宣佚. All rights reserved.
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
    NSString *encrypt_data = [XXTEA encryptStringToBase64String:text stringKey:key sign:YES];
    NSString *decrypt_data = [XXTEA decryptBase64StringToString:encrypt_data stringKey:key sign:YES];
    NSLog(@"%@", encrypt_data);
    if ([text isEqual:decrypt_data]) {
        NSLog(@"success!");
    }
    else {
        NSLog(@"fail!");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
