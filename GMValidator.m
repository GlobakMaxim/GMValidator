//
//  GMValidator.m
//  RenaultKapturFlashmob
//
//  Created by Jone Doe on 31/05/16.
//  Copyright © 2016 itellaConnexions. All rights reserved.
//

#import "GMValidator.h"

@implementation GMValidator

+ (BOOL)validateEmail:(NSString *)email{
    
    NSString *emailRegex = @"^[-\\w.]+@([A-z0-9][-A-z0-9]+\\.)+[A-z]{2,4}$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}

+ (BOOL)validatePhoneNumber:(NSString *)phone{
    
    NSString *phoneRegex = @"^((8|\\+7)[\\- ]?)?(\\(?\\d{3}\\)?[\\- ]?)?[\\d\\- ]{10}$";
    NSPredicate *testPhone = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    return [testPhone evaluateWithObject:phone];
}

+ (BOOL)validateName:(NSString *)name{
    
    NSString *nameRegex = @"[A-zА-я\\s\\-]+$";
    NSPredicate *testName = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", nameRegex];
    return [testName evaluateWithObject:name];
}

+ (BOOL)validateLogin:(NSString *)login{
    
    NSString *loginRegex = @"^[A-z0-9_-]{3,16}$";
    NSPredicate *testLogin = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", loginRegex];
    return [testLogin evaluateWithObject:login];
}

+ (NSString*)formatNumber:(NSString*)mobileNumber{
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@"(" withString:@""];
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@")" withString:@""];
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@" " withString:@""];
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@"-" withString:@""];
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@"+" withString:@""];
    
    int length = (int)mobileNumber.length;
    if(length > 10) {
        mobileNumber = [mobileNumber substringToIndex: 9];
    }
    return mobileNumber;
}

@end
