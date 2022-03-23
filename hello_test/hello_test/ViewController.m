//
//  ViewController.m
//  hello_test
//
//  Created by 李嘉敏 on 2022/3/24.
//

#import "ViewController.h"
#import "../hello/hello.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    int i = add(1, 2);
    printf("hello add = %d", i);
}


@end
