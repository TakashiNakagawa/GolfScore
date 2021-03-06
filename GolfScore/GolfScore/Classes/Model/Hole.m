//
//  Hole.m
//  GolfScore
//
//  Created by 中川 高志 on 2013/03/09.
//  Copyright (c) 2013年 CFlat. All rights reserved.
//

#import "Hole.h"

@interface Hole()

@property (readwrite) NSUInteger totalStroke;

@end
@implementation Hole

- (id)initWithPer:(NSUInteger)per {
    if (self = [super init]) {
        _per = per;
        _locations = [NSMutableArray array];
    }
    return self;
}
- (void) addStrokeAtLocation:(CLLocation *)location {
    self.totalStroke += 1;
    if (location) {
        [self.locations addObject:location];
    } else {
        [self.locations addObject:[NSNull null]];
    }
}

- (NSUInteger)distanceFromStartPositionInMiles {
    if ([self.locations count] > 1) {
        CLLocation *stt = (CLLocation *)self.locations[0];
        CLLocation *end = (CLLocation *)[self.locations lastObject];
        NSUInteger dist = [stt distanceFromLocation:end] * 0.000621371192;
        NSLog(@"Total Distance %d in miles", dist);
        return dist;
    }
    return 0;
}

@end
