//
//  ViewController.m
//  textHeight
//
//  Created by 寅祺 沙 on 16/3/2.
//  Copyright © 2016年 Yinqi. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+calculateHeightAndRect.h"

#define SCREEN_HEIGHT [[UIScreen mainScreen]bounds].size.height
#define SCREEN_WIDTH [[UIScreen mainScreen]bounds].size.width
#define TEXT1_LB_TAG 12345

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setMyButton];
    [self setMyLabel];

    NSString* text2 = @"text2:Bugatti unveiled a new high-performance supercar at the Geneva Motor Show on Monday.The French car maker currently produces only four models -- all variations of the famed Bugatti Veyron. The Veyron was introduced in 2005 and the \"Veyron 16.4 Super Sport\" was named the world's fastest production car by the Guiness Book of World Records in 2013.But the Veyron era is about to end.Bugatti says that the new generation, the Chiron, will be a \"completely new development.\" According to the car maker, it\'ll be faster, more powerful and even more expensive, with a base price of €2.4 million ($2.6 million).Bugatti -- which is part of Volkswagen -- will make just 500 of the first Chiron series, and a third of them have already been sold. The company began giving private presentations of the car to \"select customers\" last fall, and will deliver the new cars this fall.";
    
    //创建能显示完整内容的Label X,Y,Width 就是Frame内的对应值
    UILabel* textLb2 = [[UILabel alloc]initWithPositionX:10 PositionY:270 Width:300 FullTextDisplay:text2 FontSize:10];
    NSLog(@"textLb2的高度: %f",textLb2.frame.size.height);
    [self.view addSubview:textLb2];
    
    //更具字符串的内容 字体 宽度 计算Label对应的高度
    NSString* textHeight = @([UILabel CalculateHeightForFullDisplayText:text2 Font:10 textWidth:300]).stringValue;
    
    //只是为了让你看计算到结果
    UILabel* calTextHeight = [[UILabel alloc]initWithFrame:CGRectMake(10, SCREEN_HEIGHT - 25, 200, 20)];
    calTextHeight.text = [NSString stringWithFormat:@"Text2 Height: %@",textHeight];
    
    [self.view addSubview:calTextHeight];
    
}

-(void)setMyLabel{
    NSString* text1 = @"NVIDIA公司（纳斯达克代码：NVDA）是全球可编程图形处理技术领袖。与ATI（后被AMD收购）齐名，专注于打造能够增强个人和专业计算平台的人机交互体验的产品。公司的图形和通信处理器拥有广泛的市场，已被多种多样的计算平台采用，包括个人数字媒体PC、商用PC、专业工作站、数字内容创建系统、笔记本电脑、军用导航系统和视频游戏控制台等";
    
    UILabel* textLb1 = [[UILabel alloc]initWithFrame:CGRectMake(10, 55, 300, 20)];
    textLb1.text = text1;
    textLb1.numberOfLines = 1;
    textLb1.tag = TEXT1_LB_TAG;
    [self.view addSubview:textLb1];
}

-(void)setMyButton{
    UIButton* showMoreTextBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    showMoreTextBtn.frame = CGRectMake(10, 20, 300, 30);
    [showMoreTextBtn setTitle:@"Show More Text" forState:UIControlStateNormal];
    [showMoreTextBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    showMoreTextBtn.backgroundColor = [UIColor darkTextColor];
    showMoreTextBtn.layer.cornerRadius = 5;
    showMoreTextBtn.layer.masksToBounds = YES;
    [showMoreTextBtn addTarget:self action:@selector(showMoreText) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showMoreTextBtn];
}

-(void)showMoreText{
    UILabel* textLb1 = [self.view viewWithTag:TEXT1_LB_TAG];
    
    //这样就可以根据现有的宽度重新设置 能显示完整内容的Label
    [UILabel ReSetLabelByFullyDisplay:textLb1];
}

@end
