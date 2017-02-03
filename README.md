# GMValidator

Простой валидатор, который собирает в себе самые популярные регулярные выражения для:
* Email
* Телефон
* Имя
* Login
* Серия и номер паспорта
* Номер водительких прав

#### Как использовать? 

`[GMValidator validateEmail:@"Maxim@gmail.com"]; // Возвращает YES`
##### Пример с телефонным номером
```
NSString *phoneNumber = @"+7 (925) 123-45-67";
[GMValidator validatePhoneNumber:phoneNumber]; // YES
[GMValidator formatNumber:phoneNumber]; // 79251234567
```


#### Какие есть методы? 

```
+ (BOOL)validateEmail:(NSString *)email;
+ (BOOL)validatePhoneNumber:(NSString *)phone;
+ (BOOL)validateRussianName:(NSString *)name;
+ (BOOL)validateMigrantName:(NSString *)name;
+ (BOOL)validateLogin:(NSString *)login;

+ (BOOL)validateRusPassportNumber:(NSString *)passportNumber;
+ (BOOL)validateRusDrLicenseNumber:(NSString *)drLicenseNumber; // Принимает русские буквы

+ (NSString*)formatNumber:(NSString*)mobileNumber;
```