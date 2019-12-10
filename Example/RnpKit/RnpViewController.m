//
//  RnpViewController.m
//  RnpKit
//
//  Created by songchaofeng6@hotmail.com on 07/30/2019.
//  Copyright (c) 2019 songchaofeng6@hotmail.com. All rights reserved.
//

#import "RnpViewController.h"

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
    
    
    //    UITableViewFrame(CGRectZero).rnp
    //    .dataSource(self)
    //    .delegate(self)
    //    .estimatedRowHeight(80)
    //    .backgroundColor(UIColor.whiteColor)
    //    .registerNib(TableViewCell.class)
    //    .tableFooterView(nil)
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
    //        make.edges.mas_equalTo(0);
    //    });
     CAShapeLayerNew().rnp
    .path(
          BezierPathNew().rnp
          .moveToPoint(CGPointZero)
          .addLineToPoint(CGPointMake(0, 100))
          .addLineToPoint(CGPointMake(100, 100))
          .fill()
          .bezierPath.CGPath
          )
    .frame(CGRectMake(100, 100, 100, 100))
    .fillColor(UIColor.blackColor.CGColor)
    .backgroundColor(UIColor.clearColor.CGColor)
    .addToSuperLayer(self.view.layer)
    ;

    NSLog(@"%@",
          NSMutableAttributedStringWithStringNew(@"123").rnp
          .addAttribute_value_range(NSFontAttributeName, [UIFont systemFontOfSize:10], NSMakeRange(0, 1))
          .addAttribute_value_range(NSForegroundColorAttributeName, UIColor.redColor, NSMakeRange(0, 2))
          .appendAttributedString(
                                  NSAttributedStringWithStringAndAttributesNew(@"bcd", @{
                                      NSFontAttributeName : [UIFont systemFontOfSize:10]
                                  }).rnp.attributedString
                                  )
          .addAttribute_value_range(NSParagraphStyleAttributeName,
                                    NSMutableParagraphStyleNew().rnp
                                    .lineSpacing(10)
                                    .lineBreakMode(NSLineBreakByCharWrapping)
                                    .alignment(NSTextAlignmentCenter)
                                    .style,
                                    NSMakeRange(0, 1))
          .attributedString);

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell * cell = tableView.rnp.dequeueReusableCell(TableViewCell.class, indexPath);
    cell.title.text = @"111";
    return cell;
    
//    UITextFieldNew().rnp
//    .addToSuperView(self.view)
//    .backgroundColor(UIColor.redColor)
//    .placeholderFont([UIFont systemFontOfSize:30])
//    .placeholderColor(UIColor.blackColor)
//    .placeholder(@"placeholder")
//    .mas_makeConstraints(^(MASConstraintMaker * _Nonnull make) {
//        make.left.mas_equalTo(15);
//        make.bottom.mas_equalTo(-100);
//        make.height.mas_equalTo(30.f);
//        make.width.mas_equalTo(100.f);
//    });
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
