//
//  HoleTest.m
//  GolfScore
//
//  Created by 中川 高志 on 2013/03/09.
//  Copyright (c) 2013年 CFlat. All rights reserved.
//

#import "HoleTest.h"
#import "Hole.h"
@implementation HoleTest {
    Hole *hole;
}

- (void)setUp {
    hole = [[Hole alloc] initWithPer:3];
}

- (void)tearDown {
    hole = nil;
}

- (void)testHoleHasPerValue{
    STAssertTrue(hole.per >= 0, @"Hole should have 0 or positive per score");
}

- (void)testHoleCanAddStroke {
    [hole addStrokeAtLocation:nil];
    [hole addStrokeAtLocation:nil];
    STAssertTrue(hole.totalStroke == 2, @"Hole can Add Stroke");
}

- (void)testDistanceFromStartPosition {
    STAssertNoThrow([hole distanceFromStartPosition], @"Hole should know the distance from start position");
}

- (void)testStrokeCountAndLocationCountIsSame {
    [hole addStrokeAtLocation:nil];
    [hole addStrokeAtLocation:nil];
    [hole addStrokeAtLocation:nil];
    STAssertEquals(hole.totalStroke, [hole.locations count], @"TotalStroke and location count should be same");
}

@end
