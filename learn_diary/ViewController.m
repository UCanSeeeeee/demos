//
//  ViewController.m
//  learn_diary
//
//  Created by 王杰 on 2024/11/9.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "CPersion.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemPinkColor];
    NSLog(@"帅哥来啦");
    // Do any additional setup after loading the view.
    Class class1 = [self class];
    CPersion *person = [CPersion new];
    NSLog(@"帅哥来啦2 %@ + %@", NSStringFromClass([person class]) ,NSStringFromClass(objc_getMetaClass(@"CPerson")));
}


@end
