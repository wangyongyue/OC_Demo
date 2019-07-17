//
//  One.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "One.h"

#import "TwoCell.h"
#import "ThreeCell.h"
#import "TestViewController.h"
#import "TwoCellModel.h"
#import "ThreeCellModel.h"
#import "TestCellModel.h"
#import "TestCollectionViewController.h"

@interface One ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)HttpMine *http;

@end
@implementation One

- (NSMutableArray *)array{
    if (_array == nil){
        
        _array = [[NSMutableArray alloc]init];
    }
    return  _array;
}
- (HttpMine *)http{
    
    if (_http == nil){
        
        _http = [[HttpMine alloc]init];
    }
    return  _http;
}
- (instancetype)initWithStyle:(NSInteger)style
{
    self = [super init];
    if (self) {
        self.style = style;

    }
    return self;
}
- (UIViewController *)getVC{
//    OneVC *vc = [[OneVC alloc]init];
    
    
    TestViewController *vc = [[TestViewController alloc]init];
    vc.m = self;
    return vc;
    
}

- (void)loadData:(void (^)(NSArray * _Nonnull))block{
    
    [POST request:self.http block:^(NSDictionary * _Nonnull response) {
        
        if (self.style == 1){
            
            [self.array addObject:[[OneCellModel alloc]init]];
            [self.array addObject:[[OneCellModel alloc]init]];
            [self.array addObject:[[OneCellModel alloc]init]];
            [self.array addObject:[[OneCellModel alloc]init]];
            [self.array addObject:[[OneCellModel alloc]init]];
        }else if (self.style == 2){
            [self.array addObject:[[TwoCellModel alloc]init]];
            [self.array addObject:[[TwoCellModel alloc]init]];
            [self.array addObject:[[TwoCellModel alloc]init]];
            [self.array addObject:[[TwoCellModel alloc]init]];
            [self.array addObject:[[TwoCellModel alloc]init]];
        }else if (self.style == 3){
            [self.array addObject:[[ThreeCellModel alloc]init]];
            [self.array addObject:[[ThreeCellModel alloc]init]];
            [self.array addObject:[[ThreeCellModel alloc]init]];
            [self.array addObject:[[ThreeCellModel alloc]init]];
            [self.array addObject:[[ThreeCellModel alloc]init]];
        }else if (self.style == 4){
            [self.array addObject:[[TestCellModel alloc]init]];
            [self.array addObject:[[TestCellModel alloc]init]];
            [self.array addObject:[[TestCellModel alloc]init]];
            [self.array addObject:[[TestCellModel alloc]init]];
            [self.array addObject:[[TestCellModel alloc]init]];
        }
        
        block(self.array);
        
        
        
    }];
    
}
- (void)tableIndex:(NSInteger)index{
    
    id model = self.array[index];
    NSLog(NSStringFromClass([model class]));
}
@end
