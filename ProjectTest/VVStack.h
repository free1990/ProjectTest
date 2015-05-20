//
//  VVStack.h
//  ProjectTest
//
//  Created by John on 15/5/20.
//  Copyright (c) 2015年 WorkMac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VVStack : NSObject
@property (nonatomic, strong) NSMutableArray *numbers;
- (void)push:(double)num ;
- (double)top;
- (NSUInteger)count;
- (double)pop;
@end
