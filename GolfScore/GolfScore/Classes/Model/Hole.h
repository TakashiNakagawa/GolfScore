//
//  Hole.h
//  GolfScore
//
//  Created by 中川 高志 on 2013/03/09.
//  Copyright (c) 2013年 CFlat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface Hole : NSObject

@property NSUInteger per;
@property (readonly) NSUInteger totalStroke;
@property (nonatomic) NSMutableArray *locations;

- (id) initWithPer:(NSUInteger)per;
- (void) addStrokeAtLocation:(CLLocation *)location;
- (NSUInteger) distanceFromStartPositionInMiles;

@end
