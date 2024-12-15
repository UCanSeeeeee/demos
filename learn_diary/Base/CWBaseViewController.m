//
//  CWBaseViewController.m
//  learn_diary
//
//  Created by 王杰 on 2024/12/15.
//

#import "CWBaseViewController.h"

@interface CWBaseViewController ()

@property (nonatomic, strong) UIImageView *webpImageView;
@property (nonatomic, strong) UISwitch *customSwitch;

@end

@implementation CWBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.systemPinkColor;
    // 设置UISwitch的位置在屏幕中央
    self.customSwitch = [[UISwitch alloc] init];
    self.customSwitch.center = self.view.center;
    [self.view addSubview:self.customSwitch];
    // 设置UIImageView的位置在UISwitch的上方，并且centerX与UISwitch对齐
    CGFloat imageViewWidth = 100;
    CGFloat imageViewHeight = 100;
    CGFloat imageViewX = self.customSwitch.center.x - imageViewWidth / 2;
    CGFloat imageViewY = self.customSwitch.center.y - imageViewHeight - 20; // 20是UIImageView与UISwitch的间距
    self.webpImageView = [[UIImageView alloc] initWithFrame:CGRectMake(imageViewX, imageViewY, imageViewWidth, imageViewHeight)];
    [self.view addSubview:self.webpImageView];
    [self.customSwitch addTarget:self action:@selector(switchValueChanged:) forControlEvents:UIControlEventValueChanged];
}

- (void)switchValueChanged:(UISwitch *)sender {
    if (sender.isOn) {
        // 显示webp动画
        NSURL *webpURL = [NSURL URLWithString:@"https://dpubstatic.udache.com/static/dpubimg/e2qm8XHsvbnF8VSISQK1S.webp"];
        [self.webpImageView sd_setImageWithURL:webpURL];
    } else {
        // 移除webp动画
        self.webpImageView.image = nil;
    }
}

@end
