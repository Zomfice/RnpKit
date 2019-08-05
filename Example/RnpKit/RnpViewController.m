//
//  RnpViewController.m
//  RnpKit
//
//  Created by songchaofeng6@hotmail.com on 07/30/2019.
//  Copyright (c) 2019 songchaofeng6@hotmail.com. All rights reserved.
//

#import "RnpViewController.h"
#import <Masonry/Masonry.h>
#import <RnpKit/RnpKit.h>
#import "TableViewCell.h"

@interface RnpViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView * tableView;
@end

@implementation RnpViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    UIViewNew().rnp
//    .frame(CGRectMake(50, 100, 100, 100))
//    .addToSuperView(self.view)
//    .backgroundColor([UIColor redColor]);
//
//    UILabelNew().rnp.frame(CGRectMake(50, 250, 100, 100)).addToSuperView(self.view).backgroundColor(UIColor.cyanColor);
//
//
//    UIViewNew().rnp
//    .backgroundColor(UIColor.magentaColor)
//    .addToSuperView(self.view)
//    .mas_makeConstraints(^(MASConstraintMaker * _Nonnull make) {
//        make.centerX.centerY.mas_equalTo(0);
//        make.width.height.mas_equalTo(100);
//    });
//
//    UILabelNew().rnp
//    .text(@"Hello The Dog")
//    .textColor(UIColor.redColor)
//    .font([UIFont systemFontOfSize:17])
//    .textAlignment(NSTextAlignmentLeft)
//    .addToSuperView(self.view)
//    .mas_makeConstraints(^(MASConstraintMaker * _Nonnull make) {
//        make.right.mas_equalTo(-15);
//        make.centerY.mas_equalTo(0);
//    });
//
//    UIButtonNew().rnp
//    .text(@"name", UIControlStateNormal)
//    .font([UIFont systemFontOfSize:16])
//    .backgroundColor(UIColor.brownColor)
//    .addToSuperView(self.view)
//    .mas_makeConstraints(^(MASConstraintMaker * _Nonnull make) {
//        make.right.mas_equalTo(-15);
//        make.centerY.mas_equalTo(40);
//    });
//
//
//    UIViewFrame(CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height)).rnp
//    .backgroundColor([UIColor redColor]);
    
    
    UITableViewFrame(CGRectZero).rnp
    .dataSource(self)
    .delegate(self)
    .estimatedRowHeight(80)
    .backgroundColor(UIColor.whiteColor)
    .registerNib(TableViewCell.class)
    .tableFooterView(nil)
    .addToSuperView(self.view)
    .mas_makeConstraints(^(MASConstraintMaker * _Nonnull make) {
        make.edges.mas_equalTo(0);
    });
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell * cell = tableView.rnp.dequeueReusableCell(TableViewCell.class, indexPath);
    cell.title.text = @"111";
    return cell;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
