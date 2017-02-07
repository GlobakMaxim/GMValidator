//
//  GMValidator.m
//

#import "GMValidator.h"

@implementation GMValidator

+ (BOOL)validateEmail:(NSString *)email{
    NSString *emailRegex = @"^(?i)[a-z0-9]+((\\.|-|_)?[a-z0-9]+)*@([a-z0-9]+\\.)+[a-z]{2,4}";
    return [self validateString:email withMask:emailRegex];
}

+ (BOOL)validatePhoneNumber:(NSString *)phone{
    NSString *phoneRegex = @"^((8|\\+7)[\\- ]?)?(\\(?\\d{3}\\)?[\\- ]?)?[\\d\\- ]{10}$";
    return [self validateString:phone withMask:phoneRegex];
}

+ (BOOL)validateRussianName:(NSString *)name{
    NSString *nameRegex = @"[А-я\\s\\-]+$";
    return [self validateString:name withMask:nameRegex];
}

+ (BOOL)validateMigrantName:(NSString *)name{
    NSString *nameRegex = @"[A-zА-я\\s\\-]+$";
    return [self validateString:name withMask:nameRegex];
}

+ (BOOL)validateLogin:(NSString *)login{
    NSString *loginRegex = @"^[A-z0-9_-]{3,16}$";
    return [self validateString:login withMask:loginRegex];
}

+ (BOOL)validateRusPassportNumber:(NSString *)passportNumber {
    NSString *passportNumRegex = @"\\d{4} \\d{6}";
    return [self validateString:passportNumber withMask:passportNumRegex];
}

+ (BOOL)validateRusDrLicenseNumber:(NSString *)drLicenseNumber {
    NSString *drLicenseNumberRegex = @"(?i)\\d{2}(\\d{2}|[авекмнорстух]{2}) \\d{6}";
    return [self validateString:drLicenseNumber withMask:drLicenseNumberRegex];
}

+ (BOOL)validateString:(NSString *)str withMask:(NSString *)mask {
    NSPredicate *testString = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mask];
    return [testString evaluateWithObject:str];
}

+ (NSString*)formatNumber:(NSString*)mobileNumber{
    NSCharacterSet *charSet = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    NSString *cleanedPhone = [[mobileNumber componentsSeparatedByCharactersInSet:charSet] componentsJoinedByString:@""];
    return cleanedPhone;
}

@end
