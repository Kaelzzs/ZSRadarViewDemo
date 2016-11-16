//
//  CustomRadarView.m
//
//  Code generated using QuartzCode 1.39.10 on 2016/11/7.
//  www.quartzcodeapp.com
//

#import "CustomRadarView.h"
#import "QCMethod.h"

@interface CustomRadarView ()

@property (nonatomic, assign) BOOL  updateLayerValueForCompletedAnimation;
@property (nonatomic, assign) BOOL  animationAdded;
@property (nonatomic, strong) NSMapTable * completionBlocks;
@property (nonatomic, strong) NSMutableDictionary * layers;


@end

@implementation CustomRadarView

#pragma mark - Life Cycle

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		[self setupProperties];
		[self setupLayers];
	}
	return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	if (self) {
		[self setupProperties];
		[self setupLayers];
	}
	return self;
}

- (void)setRadarAnimProgress:(CGFloat)radarAnimProgress{
	if(!self.animationAdded){
		[self removeAllAnimations];
		[self addRadarAnimation];
		self.animationAdded = YES;
		self.layer.speed = 0;
		self.layer.timeOffset = 0;
	}
	else{
		CGFloat totalDuration = 6.98;
		CGFloat offset = radarAnimProgress * totalDuration;
		self.layer.timeOffset = offset;
	}
}

- (void)setFrame:(CGRect)frame{
	[super setFrame:frame];
	[self setupLayerFrames];
}

- (void)setBounds:(CGRect)bounds{
	[super setBounds:bounds];
	[self setupLayerFrames];
}

- (void)setupProperties{
	self.completionBlocks = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsOpaqueMemory valueOptions:NSPointerFunctionsStrongMemory];;
	self.layers = [NSMutableDictionary dictionary];
	self.updateLayerValueForCompletedAnimation = YES;
	self.color = [UIColor colorWithRed:0.0445 green: 1 blue:0.76 alpha:1];
}

- (void)setupLayers{
	CAShapeLayer * oval1 = [CAShapeLayer layer];
	[self.layer addSublayer:oval1];
	self.layers[@"oval1"] = oval1;
	
	CAShapeLayer * oval2 = [CAShapeLayer layer];
	[self.layer addSublayer:oval2];
	self.layers[@"oval2"] = oval2;
	
	CAShapeLayer * oval3 = [CAShapeLayer layer];
	[self.layer addSublayer:oval3];
	self.layers[@"oval3"] = oval3;
	
	CAShapeLayer * oval4 = [CAShapeLayer layer];
	[self.layer addSublayer:oval4];
	self.layers[@"oval4"] = oval4;
	
	[self resetLayerPropertiesForLayerIdentifiers:nil];
	[self setupLayerFrames];
}

- (void)resetLayerPropertiesForLayerIdentifiers:(NSArray *)layerIds{
	[CATransaction begin];
	[CATransaction setDisableActions:YES];
	
	if(!layerIds || [layerIds containsObject:@"oval1"]){
		CAShapeLayer * oval1 = self.layers[@"oval1"];
		oval1.opacity   = 0;
		oval1.fillColor = [UIColor colorWithRed:0.188 green: 0.713 blue:0.971 alpha:1].CGColor;
		oval1.lineWidth = 0;
	}
	if(!layerIds || [layerIds containsObject:@"oval2"]){
		CAShapeLayer * oval2 = self.layers[@"oval2"];
		oval2.opacity   = 0;
		oval2.fillColor = [UIColor colorWithRed:0.188 green: 0.713 blue:0.971 alpha:1].CGColor;
		oval2.lineWidth = 0;
	}
	if(!layerIds || [layerIds containsObject:@"oval3"]){
		CAShapeLayer * oval3 = self.layers[@"oval3"];
		oval3.opacity   = 0;
		oval3.fillColor = [UIColor colorWithRed:0.188 green: 0.713 blue:0.971 alpha:1].CGColor;
		oval3.lineWidth = 0;
	}
	if(!layerIds || [layerIds containsObject:@"oval4"]){
		CAShapeLayer * oval4 = self.layers[@"oval4"];
		oval4.opacity   = 0;
		oval4.fillColor = [UIColor colorWithRed:0.188 green: 0.713 blue:0.971 alpha:1].CGColor;
		oval4.lineWidth = 0;
	}
	
	[CATransaction commit];
}

- (void)setupLayerFrames{
	[CATransaction begin];
	[CATransaction setDisableActions:YES];
	
	CAShapeLayer * oval1 = self.layers[@"oval1"];
	oval1.frame          = CGRectMake(0.25 * CGRectGetWidth(oval1.superlayer.bounds), 0.25 * CGRectGetHeight(oval1.superlayer.bounds), 0.5 * CGRectGetWidth(oval1.superlayer.bounds), 0.5 * CGRectGetHeight(oval1.superlayer.bounds));
	oval1.path           = [self oval1PathWithBounds:[self.layers[@"oval1"] bounds]].CGPath;
	
	CAShapeLayer * oval2 = self.layers[@"oval2"];
	oval2.frame          = CGRectMake(0.25 * CGRectGetWidth(oval2.superlayer.bounds), 0.25 * CGRectGetHeight(oval2.superlayer.bounds), 0.5 * CGRectGetWidth(oval2.superlayer.bounds), 0.5 * CGRectGetHeight(oval2.superlayer.bounds));
	oval2.path           = [self oval2PathWithBounds:[self.layers[@"oval2"] bounds]].CGPath;
	
	CAShapeLayer * oval3 = self.layers[@"oval3"];
	oval3.frame          = CGRectMake(0.25 * CGRectGetWidth(oval3.superlayer.bounds), 0.25 * CGRectGetHeight(oval3.superlayer.bounds), 0.5 * CGRectGetWidth(oval3.superlayer.bounds), 0.5 * CGRectGetHeight(oval3.superlayer.bounds));
	oval3.path           = [self oval3PathWithBounds:[self.layers[@"oval3"] bounds]].CGPath;
	
	CAShapeLayer * oval4 = self.layers[@"oval4"];
	oval4.frame          = CGRectMake(0.25 * CGRectGetWidth(oval4.superlayer.bounds), 0.25 * CGRectGetHeight(oval4.superlayer.bounds), 0.5 * CGRectGetWidth(oval4.superlayer.bounds), 0.5 * CGRectGetHeight(oval4.superlayer.bounds));
	oval4.path           = [self oval4PathWithBounds:[self.layers[@"oval4"] bounds]].CGPath;
	
	[CATransaction commit];
}

#pragma mark - Animation Setup

- (void)addRadarAnimation{
	[self resetLayerPropertiesForLayerIdentifiers:@[@"oval1", @"oval2", @"oval3", @"oval4"]];
	
	self.layer.speed = 1;
	self.animationAdded = NO;
	
	NSString * fillMode = kCAFillModeForwards;
	
	////An infinity animation
	
	CAShapeLayer * oval1 = self.layers[@"oval1"];
	
	////Oval1 animation
	CAKeyframeAnimation * oval1TransformAnim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
	oval1TransformAnim.values      = @[[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1)], 
		 [NSValue valueWithCATransform3D:CATransform3DMakeScale(2, 2, 1)]];
	oval1TransformAnim.keyTimes    = @[@0, @1];
	oval1TransformAnim.duration    = 3.98;
	oval1TransformAnim.repeatCount = INFINITY;
	
	CAKeyframeAnimation * oval1OpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
	oval1OpacityAnim.values                = @[@1, @0];
	oval1OpacityAnim.keyTimes              = @[@0, @1];
	oval1OpacityAnim.duration              = 3.98;
	oval1OpacityAnim.repeatCount           = INFINITY;
	
	CAAnimationGroup * oval1RadarAnim = [QCMethod groupAnimations:@[oval1TransformAnim, oval1OpacityAnim] fillMode:fillMode];
	[oval1 addAnimation:oval1RadarAnim forKey:@"oval1RadarAnim"];
	
	////Oval2 animation
	CAKeyframeAnimation * oval2OpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
	oval2OpacityAnim.values                = @[@1, @0];
	oval2OpacityAnim.keyTimes              = @[@0, @1];
	oval2OpacityAnim.duration              = 3.98;
	oval2OpacityAnim.beginTime             = 1;
	oval2OpacityAnim.repeatCount           = INFINITY;
	
	CAShapeLayer * oval2 = self.layers[@"oval2"];
	
	CAKeyframeAnimation * oval2TransformAnim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
	oval2TransformAnim.values      = @[[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1)], 
		 [NSValue valueWithCATransform3D:CATransform3DMakeScale(2, 2, 1)]];
	oval2TransformAnim.keyTimes    = @[@0, @1];
	oval2TransformAnim.duration    = 3.98;
	oval2TransformAnim.beginTime   = 1;
	oval2TransformAnim.repeatCount = INFINITY;
	
	CAAnimationGroup * oval2RadarAnim = [QCMethod groupAnimations:@[oval2OpacityAnim, oval2TransformAnim] fillMode:fillMode];
	[oval2 addAnimation:oval2RadarAnim forKey:@"oval2RadarAnim"];
	
	////Oval3 animation
	CAKeyframeAnimation * oval3OpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
	oval3OpacityAnim.values                = @[@1, @0];
	oval3OpacityAnim.keyTimes              = @[@0, @1];
	oval3OpacityAnim.duration              = 3.98;
	oval3OpacityAnim.beginTime             = 2;
	oval3OpacityAnim.repeatCount           = INFINITY;
	
	CAShapeLayer * oval3 = self.layers[@"oval3"];
	
	CAKeyframeAnimation * oval3TransformAnim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
	oval3TransformAnim.values      = @[[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1)], 
		 [NSValue valueWithCATransform3D:CATransform3DMakeScale(2, 2, 1)]];
	oval3TransformAnim.keyTimes    = @[@0, @1];
	oval3TransformAnim.duration    = 3.98;
	oval3TransformAnim.beginTime   = 2;
	oval3TransformAnim.repeatCount = INFINITY;
	
	CAAnimationGroup * oval3RadarAnim = [QCMethod groupAnimations:@[oval3OpacityAnim, oval3TransformAnim] fillMode:fillMode];
	[oval3 addAnimation:oval3RadarAnim forKey:@"oval3RadarAnim"];
	
	////Oval4 animation
	CAKeyframeAnimation * oval4OpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
	oval4OpacityAnim.values                = @[@1, @0];
	oval4OpacityAnim.keyTimes              = @[@0, @1];
	oval4OpacityAnim.duration              = 3.98;
	oval4OpacityAnim.beginTime             = 3;
	oval4OpacityAnim.repeatCount           = INFINITY;
	
	CAShapeLayer * oval4 = self.layers[@"oval4"];
	
	CAKeyframeAnimation * oval4TransformAnim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
	oval4TransformAnim.values      = @[[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1)], 
		 [NSValue valueWithCATransform3D:CATransform3DMakeScale(2, 2, 1)]];
	oval4TransformAnim.keyTimes    = @[@0, @1];
	oval4TransformAnim.duration    = 3.98;
	oval4TransformAnim.beginTime   = 3;
	oval4TransformAnim.repeatCount = INFINITY;
	
	CAAnimationGroup * oval4RadarAnim = [QCMethod groupAnimations:@[oval4OpacityAnim, oval4TransformAnim] fillMode:fillMode];
	[oval4 addAnimation:oval4RadarAnim forKey:@"oval4RadarAnim"];
}

#pragma mark - Animation Cleanup

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
	void (^completionBlock)(BOOL) = [self.completionBlocks objectForKey:anim];;
	if (completionBlock){
		[self.completionBlocks removeObjectForKey:anim];
		if ((flag && self.updateLayerValueForCompletedAnimation) || [[anim valueForKey:@"needEndAnim"] boolValue]){
			[self updateLayerValuesForAnimationId:[anim valueForKey:@"animId"]];
			[self removeAnimationsForAnimationId:[anim valueForKey:@"animId"]];
		}
		completionBlock(flag);
	}
}

- (void)updateLayerValuesForAnimationId:(NSString *)identifier{
	if([identifier isEqualToString:@"radar"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"oval1"] animationForKey:@"oval1RadarAnim"] theLayer:self.layers[@"oval1"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"oval2"] animationForKey:@"oval2RadarAnim"] theLayer:self.layers[@"oval2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"oval3"] animationForKey:@"oval3RadarAnim"] theLayer:self.layers[@"oval3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"oval4"] animationForKey:@"oval4RadarAnim"] theLayer:self.layers[@"oval4"]];
	}
}

- (void)removeAnimationsForAnimationId:(NSString *)identifier{
	if([identifier isEqualToString:@"radar"]){
		[self.layers[@"oval1"] removeAnimationForKey:@"oval1RadarAnim"];
		[self.layers[@"oval2"] removeAnimationForKey:@"oval2RadarAnim"];
		[self.layers[@"oval3"] removeAnimationForKey:@"oval3RadarAnim"];
		[self.layers[@"oval4"] removeAnimationForKey:@"oval4RadarAnim"];
	}
	self.layer.speed = 1;
}

- (void)removeAllAnimations{
	[self.layers enumerateKeysAndObjectsUsingBlock:^(id key, CALayer *layer, BOOL *stop) {
		[layer removeAllAnimations];
	}];
	self.layer.speed = 1;
}

#pragma mark - Bezier Path

- (UIBezierPath*)oval1PathWithBounds:(CGRect)bound{
	UIBezierPath * oval1Path = [UIBezierPath bezierPathWithOvalInRect:bound];
	return oval1Path;
}

- (UIBezierPath*)oval2PathWithBounds:(CGRect)bound{
	UIBezierPath * oval2Path = [UIBezierPath bezierPathWithOvalInRect:bound];
	return oval2Path;
}

- (UIBezierPath*)oval3PathWithBounds:(CGRect)bound{
	UIBezierPath * oval3Path = [UIBezierPath bezierPathWithOvalInRect:bound];
	return oval3Path;
}

- (UIBezierPath*)oval4PathWithBounds:(CGRect)bound{
	UIBezierPath * oval4Path = [UIBezierPath bezierPathWithOvalInRect:bound];
	return oval4Path;
}


@end
