//
//  HttpLogin.h
//  OC_Demo
//
//  Created by apple on 2019/7/15.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"

NS_ASSUME_NONNULL_BEGIN

@interface HttpLogin : NSObject <HttpProtocol>
@property(nonatomic,copy)NSString *username;
@property(nonatomic,copy)NSString *password;

@end

NS_ASSUME_NONNULL_END
