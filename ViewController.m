//
//  ViewController.m
//  ceshi
//
//  Created by dentist on 16/6/29.
//  Copyright © 2016年 夏智. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *SV;

@property(nonatomic,strong)NSArray *array;

@end

@implementation ViewController
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
   /**
     *  /
     *
     *  @return sffdgdfg
     */
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self ceshi];
}

- (void)ceshi
{
    UIScrollView *SV = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 200)];
    SV.backgroundColor = [UIColor greenColor];
    [self.view addSubview:SV];
    
    float w = self.view.bounds.size.width /4.0;
    
    
    for (int i= 0; i<16; i++) {
        UIButton *fancBtn = [[UIButton alloc]initWithFrame:CGRectMake(i%8%4*w + i/8*375, i%8/4*w, w, w)];
        [fancBtn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"emoji_%d",i+1]] forState:UIControlStateNormal];
        fancBtn.tag = i;
        
        [SV addSubview:fancBtn];
        
    }
    NSInteger page = 14/8+1;
    
    SV.contentSize = CGSizeMake(self.view.bounds.size.width*page,0);
    SV.pagingEnabled = YES;
    
    UIPageControl *pageControl = [[UIPageControl alloc]init];
    pageControl.frame = CGRectMake(0, SV.frame.size.height - 20, SV.frame.size.width, 10);
    pageControl.numberOfPages = page;
    pageControl.currentPage = 0;
    pageControl.currentPageIndicatorTintColor = [UIColor redColor];
    pageControl.pageIndicatorTintColor = [UIColor blueColor];
    
    [SV addSubview:pageControl];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
