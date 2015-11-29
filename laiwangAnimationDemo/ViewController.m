//
//  ViewController.m
//  laiwangAnimationDemo
//
//  Created by taitanxiami on 15/11/29.
//  Copyright © 2015年 taitanxiami. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *chatView;
@property (weak, nonatomic) IBOutlet UIButton *chatIconImageView;
@property (weak, nonatomic) IBOutlet UIButton *scanView;
@property (weak, nonatomic) IBOutlet UIButton *scanIconImageView;

@property (weak, nonatomic) IBOutlet UIButton *addView;
@property (weak, nonatomic) IBOutlet UIButton *addIconImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.chatView.layer.cornerRadius = 44;
    self.chatView.layer.masksToBounds = YES;
    self.chatView.layer.affineTransform = CGAffineTransformMakeScale(0.0, 0.0);
    self.chatIconImageView.layer.affineTransform = CGAffineTransformMakeScale(2, 2);
    
    self.scanView.layer.cornerRadius = 44;
    self.scanView.layer.masksToBounds = YES;
    self.scanView.layer.affineTransform = CGAffineTransformMakeScale(0.0, 0.0);
    self.scanIconImageView.layer.affineTransform = CGAffineTransformMakeScale(2, 2);

    self.addView.layer.cornerRadius = 44;
    self.addView.layer.masksToBounds = YES;
    self.addView.layer.affineTransform = CGAffineTransformMakeScale(0.0, 0.0);
    self.addIconImageView.layer.affineTransform = CGAffineTransformMakeScale(2, 2);

    

}
- (IBAction)showAniamtion:(id)sender {
    

    __weak typeof(self)weakself = self;
    

    [UIView animateWithDuration:1.0f delay:0.0f usingSpringWithDamping:0.5 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
//        weakself.chatView.layer.transform = CATransform3DMakeScale( 1, 1, 1.0);

//        CABasicAnimation *shakeAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
//        shakeAnimation.duration = 0.5f;
//        shakeAnimation.fromValue = [NSNumber numberWithFloat:1.1];
//        shakeAnimation.toValue = [NSNumber numberWithFloat:1.0];
//        shakeAnimation.autoreverses = YES;
//        [weakself.chatIconImageView.layer addAnimation:shakeAnimation forKey:nil];
        

        weakself.chatIconImageView.layer.affineTransform = CGAffineTransformMakeScale(1.0, 1.0);
        weakself.chatView.layer.affineTransform = CGAffineTransformMakeScale(1.0, 1.0);
        weakself.scanIconImageView.layer.affineTransform = CGAffineTransformMakeScale(1.0, 1.0);
        weakself.scanView.layer.affineTransform = CGAffineTransformMakeScale(1.0, 1.0);
        weakself.addIconImageView.layer.affineTransform = CGAffineTransformMakeScale(1.0, 1.0);
        weakself.addView.layer.affineTransform = CGAffineTransformMakeScale(1.0, 1.0);

        
        
    } completion:^(BOOL finished) {
        

        weakself.chatView.layer.affineTransform = CGAffineTransformMakeScale(0.0, 0.0);
        weakself.chatIconImageView.layer.affineTransform = CGAffineTransformMakeScale(2, 2);
        weakself.scanView.layer.affineTransform = CGAffineTransformMakeScale(0.0, 0.0);
        weakself.scanIconImageView.layer.affineTransform = CGAffineTransformMakeScale(2, 2);
        weakself.addView.layer.affineTransform = CGAffineTransformMakeScale(0.0, 0.0);
        weakself.addIconImageView.layer.affineTransform = CGAffineTransformMakeScale(2, 2);


    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
