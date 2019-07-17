//
//  Interface.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/13.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#ifndef Interface_h
#define Interface_h


#endif /* Interface_h */
#import <UIKit/UIKit.h>
@protocol CellModelProtocol <NSObject>

- (NSString *)getCellID;
- (CGFloat)getCellHeight;

@end
@protocol HttpProtocol <NSObject>

- (NSString *)getUrl;
- (NSDictionary *)getBody;

@end
@protocol POSTProtocol <NSObject>

- (void)postWithData:(NSDictionary *)response;
- (void)postWithError:(NSString *)error;

@end


typedef void (^ArrayBlock)(NSArray * _Nonnull);
#import "WCollectionView.h"
#import "UICollectionViewCell+CellFunc.h"
#import "WTable.h"
#import "UITableViewCell+CellFunc.h"
#import "Cells.h"
#import "POST.h"

//https
#import "HttpLogin.h"
#import "HttpMine.h"
#import "HttpRegistered.h"
#import "HttpPopAnchor.h"

//cells
#import "OneCell.h"
#import "TwoCell.h"
#import "ThreeCell.h"
#import "TestCollectionViewCell.h"

