//
//  HoleManager.h
//  GolfScore
//
//  Created by 中川 高志 on 2013/03/19.
//  Copyright (c) 2013年 CFlat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HoleManager : NSObject

@property (readonly) NSMutableArray *holes;

- (id)initWithPers:(NSArray *)pers;

@end
