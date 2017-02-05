//
//  ViewController.m
//  XMDropDownChooseViewDemo
//
//  Created by 秦正华 on 2017/1/22.
//  Copyright © 2017年 ximenbuchuixue. All rights reserved.
//

#import "ViewController.h"
#import "XMDropDownChooseView.h"

@interface ViewController ()<XMDropDownChooseDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *titlesArr = @[@[@"综合排序",@"新品优先",@"评论数从高到低"],
                           @[@"品牌",@"国内品牌",@"国际品牌"],
                           @[@"颜色",@"黑色",@"黄色",@"白色",@"蓝色"]];
    
    XMDropDownChooseView *chooseView = [[XMDropDownChooseView alloc]initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 40) dataArr:titlesArr delegate:self];
    chooseView.titleColor = [UIColor redColor];
    [self.view addSubview:chooseView];
    
}

-(void)choosedAtSection:(NSInteger)section index:(NSInteger)index
{
    NSLog(@"section:%lu------index:%lu",section,index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
