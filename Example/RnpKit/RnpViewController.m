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
    
   UIView * v = UIViewNew().rnp
    .frame(CGRectMake(50, 100, 100, 100))
    .addToSuperView(self.view)
    .backgroundColor([UIColor redColor]).view;
    
  UIView *b =  UIViewNew().rnp
    .backgroundColor([UIColor brownColor])
    .addToSuperView(v)
    .frame(CGRectMake(20, 0, 10, 10))
    .bringToFront().view;
    
    UIViewNew().rnp
    .backgroundColor([UIColor blackColor])
    .addToSuperView(v)
    .frame(CGRectMake(0, 0, 50, 20));
    

    
    UIViewNew().rnp
    .backgroundColor(UIColor.blueColor)
    .addToSuperView(v)
    .frame(CGRectMake(0, 10, 100, 40))
    .sendToBack();
    b.rnp.bringToFront();
    
    UILabelNew().rnp.frame(CGRectMake(50, 250, 100, 100)).addToSuperView(self.view).backgroundColor(UIColor.cyanColor);
    
    
    UIViewNew().rnp
    .backgroundColor(UIColor.magentaColor)
    .addToSuperView(self.view)
    .mas_makeConstraints(^(MASConstraintMaker * _Nonnull make) {
        make.centerX.centerY.mas_equalTo(0);
        make.width.height.mas_equalTo(100);
    });
    
    UILabelNew().rnp
    .text(@"Hello The Dog")
    .textColor(UIColor.redColor)
    .font([UIFont systemFontOfSize:17])
    .textAlignment(NSTextAlignmentLeft)
    .addToSuperView(self.view)
    .mas_makeConstraints(^(MASConstraintMaker * _Nonnull make) {
        make.right.mas_equalTo(-15);
        make.centerY.mas_equalTo(0);
    });
    
    UIButtonNew().rnp
    .text(@"name", UIControlStateNormal)
    .font([UIFont systemFontOfSize:16])
    .backgroundColor(UIColor.brownColor)
    .addToSuperView(self.view)
    .mas_makeConstraints(^(MASConstraintMaker * _Nonnull make) {
        make.right.mas_equalTo(-15);
        make.centerY.mas_equalTo(40);
    });
    
    
    UIViewFrame(CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height)).rnp
    .backgroundColor([UIColor redColor]);
    
    UIButtonNew().rnp
    .translatesAutoresizingMaskIntoConstraints(NO)
    .addClickBlock(^(id  _Nonnull btn) {
        NSLog(@"sdadasdsadasd");
    })
    .addToSuperView(self.view)
    .frame(CGRectMake(100, 500, 100, 100))
    .mas_makeConstraints(^(MASConstraintMaker * _Nonnull make) {
        make.left.mas_equalTo(300.f);
        make.top.mas_equalTo(200);
        make.width.height.mas_equalTo(100);
    })
    .removeClickBlock()
    .backgroundColor(UIColor.greenColor);
    
    
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
    
    UILabelNew().rnp
    .text(@"Hello The Dog")
    .textColor(UIColor.redColor)
    .font([UIFont systemFontOfSize:17])
    .textAlignment(NSTextAlignmentLeft)
    .addToSuperView(self.view)
    .mas_makeConstraints(^(MASConstraintMaker * _Nonnull make) {
        make.right.mas_equalTo(-15);
        make.centerY.mas_equalTo(0);
        make.edges.mas_equalTo(0);
    });
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
    
    NSMutableAttributedString * att_str = [[NSMutableAttributedString alloc] initWithString:@"00:00 / 19:09"];
    [att_str addAttribute:NSForegroundColorAttributeName value:UIColor.redColor range:NSMakeRange(8, 5)];
    
    NSLog(@"%@",
          NSMutableAttributedStringWithStringNew(@"123").rnp
          .addAttribute_value_range(NSFontAttributeName, [UIFont systemFontOfSize:10], NSMakeRange(0, 1))
          .addAttribute_value_range(NSForegroundColorAttributeName, UIColor.redColor, NSMakeRange(0, 3))
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
    
    
    UILabelNew().rnp
   .textAlignment(NSTextAlignmentCenter)
    .numberOfLines(0).attributedText(NSMutableAttributedStringWithStringNew(@"dsadsadsadsdasdas\ndsdsadsadsadas\ndsadsadsadsada\n").rnp
            .appendString(@"老张开车去东北")
            .addAttribute_value(NSForegroundColorAttributeName,UIColor.redColor)
            .addAttributes(@{NSFontAttributeName:[UIFont systemFontOfSize:20]})
            .attributedString)
    .addToSuperView(self.view)
    .mas_makeConstraints(^(MASConstraintMaker * _Nonnull make) {
        make.bottom.mas_equalTo(0);
    });
    
    self.view.rnp
    .addGesture(UITapGestureRecognizerNew().rnp
                .addTargetBlock(^(id g){
        NSLog(@"123");
    }).gesture);
    
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
