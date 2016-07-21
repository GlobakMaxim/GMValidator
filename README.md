# GMValidator

Простой валидатор, который собирает в себе самые популярные регулярные выражения для:
* Email
* Телефон
* Имя
* Login

#### Как использовать? 

`[GMValidator validateEmail:@"Maxim@gmail.com"]; // Возвращает YES`
##### Пример с телефонным номером
```
NSString *phoneNumber = @"+7 (925) 123-45-67";
[GMValidator validatePhoneNumber:phoneNumber]; // true
[GMValidator formatNumber:phoneNumber]; // 79251234567
```


#### Какие есть методы? 

```
+ (BOOL)validateEmail:(NSString *)email;
+ (BOOL)validatePhoneNumber:(NSString *)phone;
+ (BOOL)validateName:(NSString *)name;
+ (BOOL)validateLogin:(NSString *)login;
+ (NSString
+ (NSString*)formatNumber:(NSString*)mobileNumber;
```