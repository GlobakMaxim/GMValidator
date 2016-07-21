# GMValidator

Простой валидатор, который собирает в себе самые популярные регулярные выражения для:
* Email
* Телефон
* Имя
* Login

#### Как использовать? 

`[GMValidator validateEmail:@"Maxim@gmail.com"]; // Возвращает YES`

#### Какие есть методы? 

`
\+ (BOOL)validateEmail:(NSString *)email;
\+ (BOOL)validatePhoneNumber:(NSString *)phone;
\+ (BOOL)validateName:(NSString *)name;
\+ (BOOL)validateLogin:(NSString *)login;
\+ (NSString\*)formatNumber:(NSString\*)mobileNumber;
`