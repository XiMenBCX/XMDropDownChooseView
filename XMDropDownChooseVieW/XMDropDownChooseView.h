//
//  XMDropDownChooseView.h
//  Created by Felix on 14-3-17.
//  Copyright (c) 2014年 xxyyzz. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SECTION_BTN_TAG_BEGIN 1000
#define SECTION_IV_TAG_BEGIN 3000

#define W_PATH  [UIScreen mainScreen].bounds.size.width
#define H_PATH  [UIScreen mainScreen].bounds.size.height

/**
 选择筛选器后执行代理方法
 */
@protocol XMDropDownChooseDelegate <NSObject>

-(void)choosedAtSection:(NSInteger)section index:(NSInteger)index;

@end

@interface XMDropDownChooseView : UIView<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, assign) id<XMDropDownChooseDelegate> chooseDelegate;

/**
 背景视图
 */
@property (nonatomic, strong) UIView *backGroundView;

/**
 条件清单列表容器
 */
@property (nonatomic, strong) UITableView *ListTableView;

/**
 选中cell文字、箭头展示颜色
 */
@property(nonatomic,strong)UIColor * titleColor;

- (id)initWithFrame:(CGRect)frame dataArr:(NSArray *)dataArr delegate:(id)delegate;

@end
