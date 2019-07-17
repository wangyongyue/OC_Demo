//
//  ViewController.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "ViewController.h"
#import "OneVC.h"
#import "One.h"
#import "TestCellModel.h"
#import "Test.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button];
    [button setTitle:@"style1" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button1];
    [button1 setTitle:@"style2" forState:UIControlStateNormal];
    [button1 setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button2];
    [button2 setTitle:@"style3" forState:UIControlStateNormal];
    [button2 setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button3];
    [button3 setTitle:@"collection" forState:UIControlStateNormal];
    [button3 setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    
    button.frame = CGRectMake(50, 80, 100, 30);
    button1.frame = CGRectMake(50, 80 + 50, 100, 30);
    button2.frame = CGRectMake(50, 80 + 50 *2, 100, 30);
    button3.frame = CGRectMake(50, 80 + 50 *3, 100, 30);

    [button addTarget:self action:@selector(click1) forControlEvents:UIControlEventTouchUpInside];
    [button1 addTarget:self action:@selector(click2) forControlEvents:UIControlEventTouchUpInside];
    [button2 addTarget:self action:@selector(click3) forControlEvents:UIControlEventTouchUpInside];
    [button3 addTarget:self action:@selector(click4) forControlEvents:UIControlEventTouchUpInside];

}
- (void)click1{
    One *m = [[One alloc]initWithStyle:1];
    [self.navigationController pushViewController:[m getVC] animated:true];
    
}
- (void)click2{
    One *m = [[One alloc]initWithStyle:2];
    [self.navigationController pushViewController:[m getVC] animated:true];
    
}
- (void)click3{
    One *m = [[One alloc]initWithStyle:3];
    [self.navigationController pushViewController:[m getVC] animated:true];
    
}
- (void)click4{
    Test *m = [[Test alloc]init];
    [self.navigationController pushViewController:[m getVC] animated:true];
    
}

@end
