//
//  HoleManager.m
//  GolfScore
//
//  Created by 中川 高志 on 2013/03/19.
//  Copyright (c) 2013年 CFlat. All rights reserved.
//

#import "HoleManager.h"
#import "Hole.h"

@interface HoleManager()

@property (readwrite) NSMutableArray *holes;

@end

@implementation HoleManager

- (id)initWithPers:(NSArray *)pers {
    self = [super init];
    if (self) {
        _holes = [NSMutableArray array];
        for (NSNumber *per in pers){
            NSUInteger p = [per intValue];
            [_holes addObject:[[Hole alloc] initWithPer:p]];
        }
    }
    return self;
}

- (Hole *)holeAt:(NSUInteger)holeIndex {
    if ([self.holes count] <= holeIndex) {
        return nil;
    }
    return self.holes[holeIndex];
}

- (NSUInteger)totalStroke {
    NSUInteger stroke = 0;
    for (Hole *h in self.holes){
        stroke += [h totalStroke];
    }
    return stroke;
}

@end
