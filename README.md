#XXTEA_iOS

##### 用的是 andot 的源码，特此鸣谢。

>源码点击[这里](https://github.com/xuanyi0627/xxtea-objc.git)

##### 这里提供了Swift和OC的使用方式

>源码点击[这里](https://github.com/xuanyi0627/XXTEA_iOS.git)

### 使用方式

* Objective-C

```
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
```

* Swift

```
let text = "Hello World! 你好，中国！"
let key = "1234567890"
let encrypt_data = XXTEA.encryptString(toBase64String: text, stringKey: key)!
let decrypt_data = XXTEA.decryptBase64String(to: encrypt_data, stringKey: key)!
print("encrypt_data: \(encrypt_data)  ----   decrypt_data: \(decrypt_data)")
if text == decrypt_data {
print("success")
} else {
print("failure")
}
```
