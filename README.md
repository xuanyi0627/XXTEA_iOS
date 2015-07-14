#XXTEA_iOS

###用的是 andot 的源码，特此鸣谢。

>源码在 [https://github.com/xuanyi0627/xxtea-objc.git](https://github.com/xuanyi0627/xxtea-objc.git)

###但是在源码中没有对标志位的区分，在这个项目中对原来的代码进行了修改，添加了是否包含标志位。

###使用方式
```
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
```