//
//  CustomRadarView.h
//
//  Code generated using QuartzCode 1.39.10 on 2016/11/7.
//  www.quartzcodeapp.com
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface CustomRadarView : UIView

@property (nonatomic, strong) UIColor * color;
@property (nonatomic, assign) CGFloat  radarAnimProgress;

- (void)addRadarAnimation;
- (void)removeAnimationsForAnimationId:(NSString *)identifier;
- (void)removeAllAnimations;

@end
