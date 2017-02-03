//
//  GMValidator.m
//

#import "GMValidator.h"

@implementation GMValidator

+ (BOOL)validateEmail:(NSString *)email{
    
    NSString *emailRegex = @"^(?i)[a-z0-9]+((\\.|-|_)?[a-z0-9]+)*@([a-z0-9]+\\.)+[a-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}

+ (BOOL)validatePhoneNumber:(NSString *)phone{
    
    NSString *phoneRegex = @"^((8|\\+7)[\\- ]?)?(\\(?\\d{3}\\)?[\\- ]?)?[\\d\\- ]{10}$";
    NSPredicate *testPhone = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    return [testPhone evaluateWithObject:phone];
}

+ (BOOL)validateRussianName:(NSString *)name{
    
    NSString *nameRegex = @"[А-я\\s\\-]+$";
    NSPredicate *testName = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", nameRegex];
    return [testName evaluateWithObject:name];
}

+ (BOOL)validateMigrantName:(NSString *)name{
    
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
    NSCharacterSet *charSet = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    NSString *cleanedPhone = [[mobileNumber componentsSeparatedByCharactersInSet:charSet] componentsJoinedByString:@""];
    return cleanedPhone;
}

@end
