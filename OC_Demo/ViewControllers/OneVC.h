//
//  OneVC.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol OneProtocol <NSObject>

- (void)loadData:(void(^)(NSArray *array))block;
- (void)tableIndex:(NSInteger)index;

@end

@interface OneVC : UIViewController 
@property(nonatomic,strong)id<OneProtocol> m;
@end

NS_ASSUME_NONNULL_END
