//
//  HttpRegistered.m
//  OC_Demo
//
//  Created by apple on 2019/7/15.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "HttpRegistered.h"

@implementation HttpRegistered
- (NSString *)getUrl{
    return @"/registere";
}
- (NSDictionary *)getBody{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
    dic[@"iphone"] = self.iphone;
    return dic;
}
@end
