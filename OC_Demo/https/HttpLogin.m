//
//  HttpLogin.m
//  OC_Demo
//
//  Created by apple on 2019/7/15.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "HttpLogin.h"

@implementation HttpLogin
- (NSString *)getUrl{
    return @"/login";
}
- (NSDictionary *)getBody{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
    dic[@"username"] = self.username;
    dic[@"password"] = self.password;
    return dic;
}

@end
