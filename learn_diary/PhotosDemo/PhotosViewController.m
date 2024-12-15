//
//  PhotosViewController.m
//  learn_diary
//
//  Created by Chieh on 2024/12/15.
//

#import "PhotosViewController.h"

@interface PhotosViewController ()

@end

@implementation PhotosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor.greenColor colorWithAlphaComponent:0.2];
}

- (void)switchValueChanged:(UISwitch *)sender {
    if (sender.isOn) {
        // 打印相册
    } else {
        // 这里tm干什么呢？
    }
    
    [super switchValueChanged:sender];
}

@end
