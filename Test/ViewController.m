//
//  ViewController.m
//  Test
//
//  Created by Ericmao on 2020/11/3.
//

#import "ViewController.h"
#import "NBMRC.h"
#import "NBArc.h"
#import "Child.h"
#import "OpenGLES_Ch2_1ViewController.h"
#import "OpenGLES_Ch2_2ViewController.h"
#import "OpenGLES_Ch2_3ViewController.h"

#import "OpenGLES_Ch3_1ViewController.h"


@interface ViewController ()

@property (nonatomic, strong) NBMRC *obj;
@property (nonatomic, strong) NBArc *arc;
@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.obj = [[NBMRC alloc] init];
    
//    self.arc = [[NBArc alloc] init];
    
    [self test];
    [self addOpenGLButton];
}

- (void)addOpenGLButton {
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    [button setTitle:@"OpenGL" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(onOpenGLClicked) forControlEvents:UIControlEventTouchUpInside];
    button.center = self.view.center;
    [self.view addSubview:button];
}

- (void)onOpenGLClicked {
    OpenGLES_Ch3_1ViewController *vc = [[OpenGLES_Ch3_1ViewController alloc] init];
    [self presentViewController:vc
                       animated:YES
                     completion:^{
    }];
}

- (void)test {
    Child *child = [[Child alloc] init];
    [child draw];
    
    [child draw2];
}


@end
