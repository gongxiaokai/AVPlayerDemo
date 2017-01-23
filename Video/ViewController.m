//
//  ViewController.m
//  Video
//
//  Created by gongwenkai on 2016/12/16.
//  Copyright © 2016年 gongwenkai. All rights reserved.
//

#import "ViewController.h"
#import "VideoPlayerView.h"
@interface ViewController ()
@property (nonatomic,strong) VideoPlayerView *videoView;

@end

@implementation ViewController


- (VideoPlayerView *)videoView {
    if (!_videoView) {
//        NSString *p = [[NSBundle mainBundle] pathForResource:@"123" ofType:@"mp4"];
//        _videoView = [[VideoPlayerView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 350) andPath:p];

        NSString *path = @"http://v.tourzj.gov.cn/slyj/zww/SPW%20WAP/E3zj20160512ZHEJIANGWENHUAMEISHILVYOUJIEDENGLUXIANGGANGwap.mp4";
        _videoView = [[VideoPlayerView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 350) andPath:path];

    }
    return _videoView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.videoView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog(@"size = w = %f h = %f -----",size.width,size.height);
    
    [self.videoView resetFrame:size];
}

@end
