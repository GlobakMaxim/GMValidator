//
//  GMValidator.h
//

#import <Foundation/Foundation.h>

@interface GMValidator : NSObject

+ (BOOL)validateEmail:(NSString *)email;
+ (BOOL)validatePhoneNumber:(NSString *)phone;
+ (BOOL)validateRussianName:(NSString *)name;
+ (BOOL)validateMigrantName:(NSString *)name;
+ (BOOL)validateLogin:(NSString *)login;
+ (NSString*)formatNumber:(NSString*)mobileNumber;

@end
