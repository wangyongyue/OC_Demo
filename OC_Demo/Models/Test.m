//
//  Test.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/13.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "Test.h"
#import "TestCellModel.h"
#import "TestCollectionViewController.h"

@interface Test () <POSTProtocol>
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,copy)ArrayBlock block;



@end
@implementation Test

- (NSMutableArray *)array{
    if (_array == nil){
        
        _array = [[NSMutableArray alloc]init];
    }
    return  _array;
}

- (UIViewController *)getVC{
    TestCollectionViewController *vc = [[TestCollectionViewController alloc]init];
    vc.m = self;
    return vc;
}

- (void)loadData:(ArrayBlock)block{
    
    self.block = block;
    HttpLogin *h = [[HttpLogin alloc]init];
    [POST request:h model:self];
}
- (void)postWithData:(NSDictionary *)response{
    
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    self.block(self.array);
    
}
- (void)postWithError:(NSString *)error{
    
    
}


- (void)tableIndex:(NSInteger)index{
    
    id model = self.array[index];
    NSLog(NSStringFromClass([model class]));
}
@end
