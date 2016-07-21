//
//  GMValidator.h
//  RenaultKapturFlashmob
//
//  Created by Jone Doe on 31/05/16.
//  Copyright © 2016 itellaConnexions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GMValidator : NSObject

+ (BOOL)validateEmail:(NSString *)email;
+ (BOOL)validatePhoneNumber:(NSString *)phone;
+ (BOOL)validateName:(NSString *)name;
+ (BOOL)validateLogin:(NSString *)login;
+ (NSString*)formatNumber:(NSString*)mobileNumber;

@end
