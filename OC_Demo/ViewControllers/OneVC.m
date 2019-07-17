//
//  OneVC.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "OneVC.h"
#import "OneCell.h"
#import "TwoCell.h"
#import "ThreeCell.h"
#import "WTable.h"
@interface OneVC ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSArray *array;

@end

@implementation OneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor = UIColor.whiteColor;
    CGFloat w = self.view.frame.size.width;
    CGFloat h = self.view.frame.size.height;

    UITableView *table = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, w, h - 64) style:UITableViewStylePlain];
    [self.view addSubview:table];
    table.delegate = self;
    table.dataSource = self;
    table.rowHeight = 50;
    
    table.tableFooterView = [[UIView alloc]init];
    
   
    __weak __typeof(self) weakSelf  = self;
    [self.m loadData:^(NSArray * _Nonnull array) {
        
        weakSelf.array = array;
        [table reloadData];
        
    }];
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *identifier = self.array[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.array count];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self.m tableIndex:indexPath.row];

}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(NSStringFromClass([self.m class]));

}

@end
