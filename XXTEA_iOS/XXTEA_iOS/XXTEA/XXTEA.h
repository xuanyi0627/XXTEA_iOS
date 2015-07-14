/**********************************************************\
|                                                          |
| XXTEA.h                                                  |
|                                                          |
| XXTEA encryption algorithm library for Objective-C.      |
|                                                          |
| Encryption Algorithm Authors:                            |
|      David J. Wheeler                                    |
|      Roger M. Needham                                    |
|                                                          |
| Code Authors: Chen fei <cf850118@163.com>                |
|               Ma Bingyao <mabingyao@gmail.com>           |
| LastModified: Mar 10, 2015                               |
|                                                          |
\**********************************************************/

#import <Foundation/Foundation.h>

@interface XXTEA : NSObject

+ (NSData *) encrypt:(NSData *)data key:(NSData *)key sign:(BOOL)sign;
+ (NSData *) encrypt:(NSData *)data stringKey:(NSString *)key sign:(BOOL)sign;

+ (NSString *) encryptToBase64String:(NSData *)data key:(NSData *)key sign:(BOOL)sign;
+ (NSString *) encryptToBase64String:(NSData *)data stringKey:(NSString *)key sign:(BOOL)sign;

+ (NSData *) encryptString:(NSString *)data key:(NSData *)key sign:(BOOL)sign;
+ (NSData *) encryptString:(NSString *)data stringKey:(NSString *)key sign:(BOOL)sign;

+ (NSString *) encryptStringToBase64String:(NSString *)data key:(NSData *)key sign:(BOOL)sign;
+ (NSString *) encryptStringToBase64String:(NSString *)data stringKey:(NSString *)key sign:(BOOL)sign;

+ (NSData *) decrypt:(NSData *)data key:(NSData *)key sign:(BOOL)sign ;
+ (NSData *) decrypt:(NSData *)data stringKey:(NSString *)key sign:(BOOL)sign ;

+ (NSData *) decryptBase64String:(NSString *)data key:(NSData *)key sign:(BOOL)sign;
+ (NSData *) decryptBase64String:(NSString *)data stringKey:(NSString *)key sign:(BOOL)sign ;

+ (NSString *) decryptToString:(NSData *)data key:(NSData *)key sign:(BOOL)sign ;
+ (NSString *) decryptToString:(NSData *)data stringKey:(NSString *)key sign:(BOOL)sign ;

+ (NSString *) decryptBase64StringToString:(NSString *)data key:(NSData *)key sign:(BOOL)sign ;
+ (NSString *) decryptBase64StringToString:(NSString *)data stringKey:(NSString *)key sign:(BOOL)sign ;

@end

@interface NSData (XXTEA)

- (NSData *) xxteaEncrypt:(NSData *)key sign:(BOOL)sign;
- (NSData *) xxteaDecrypt:(NSData *)key sign:(BOOL)sign ;

@end
