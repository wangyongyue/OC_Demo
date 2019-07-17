//
//  One.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OneCell.h"
#import "OneVC.h"

NS_ASSUME_NONNULL_BEGIN

@interface One : NSObject <OneProtocol>
@property(nonatomic,assign)NSInteger style;


- (instancetype)initWithStyle:(NSInteger)style;
- (UIViewController *)getVC;
@end

NS_ASSUME_NONNULL_END
