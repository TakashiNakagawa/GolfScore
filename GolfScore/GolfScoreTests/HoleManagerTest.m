//
//  HoleManagerTest.m
//  GolfScore
//
//  Created by 中川 高志 on 2013/03/19.
//  Copyright (c) 2013年 CFlat. All rights reserved.
//

#import "HoleManagerTest.h"
#import "HoleManager.h"
#import "Hole.h"

@implementation HoleManagerTest {
    HoleManager *holeManager;
}

- (void)setUp {
    NSArray *pers = @[@3, @4, @5, @3, @3, @3, @3, @3, @3,
                      @3, @3, @3, @3, @3, @3, @3, @3, @3];
    holeManager = [[HoleManager alloc] initWithPers:pers];
}

- (void)tearDown {
    holeManager = nil;
}

- (void)testHoleHas18Holes {
    STAssertTrue([holeManager.holes count] == 18, @"HoleManager has 18 holes");
}

- (void)testHoleCanGetFromHoleManager{
    STAssertNotNil([holeManager holeAt:0], @"HoleManager contains hole");
    STAssertNotNil([holeManager holeAt:1], @"HoleManager contains hole");
    STAssertNotNil([holeManager holeAt:17], @"HoleManager contains hole");
    STAssertNil([holeManager holeAt:18], @"HoleManager doesnot contain this hole");
}

- (void)testHoleManagerCalcTotalStroke{
    NSMutableArray *holes = [NSMutableArray array];
    for (int i = 0; i < 18; ++i) {
        [holes addObject:[holeManager holeAt:i]];
    }
    
    // 各ホール共全て5打で回ったとする
    for (Hole *h in holes){
        for (int stroke = 0; stroke < 6; ++stroke) {
            [h addStrokeAtLocation:nil];
        }
    }
    
    STAssertTrue([holeManager totalStroke] == 6*18, @"Total Stroke is 108");
}

@end
