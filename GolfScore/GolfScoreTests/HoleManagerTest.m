//
//  HoleManagerTest.m
//  GolfScore
//
//  Created by 中川 高志 on 2013/03/19.
//  Copyright (c) 2013年 CFlat. All rights reserved.
//

#import "HoleManagerTest.h"
#import "HoleManager.h"

@implementation HoleManagerTest {
    HoleManager *holeManager;
}

- (void)setUp {
    NSArray *pers = @[@3, @3, @3, @3, @3, @3, @3, @3, @3,
                      @3, @3, @3, @3, @3, @3, @3, @3, @3];
    holeManager = [[HoleManager alloc] initWithPers:pers];
}

- (void)tearDown {
    holeManager = nil;
}

- (void)testHoleHas18Holes {
    STAssertTrue([holeManager.holes count] == 18, @"HoleManager has 18 holes");
}

@end
