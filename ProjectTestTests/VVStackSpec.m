//
//  VVStack.m
//  ProjectTest
//
//  Created by John on 15/5/20.
//  Copyright (c) 2015年 WorkMac. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "VVStack.h"

SPEC_BEGIN(VVStackSpec)

describe(@"VVStack", ^{
    
    registerMatchers(@"BG");
    
    context(@"when created", ^{
        __block VVStack *stack = nil;
        beforeEach(^{
            stack = [VVStack new];
        });
        
        afterEach(^{
            stack = nil;
        });
        
        it(@"should equal contains 0 element", ^{
            [[theValue([stack.numbers count]) should] equal:theValue(0)];
        });
        
        it(@"should have the class VVStack", ^{
            [[[VVStack class] shouldNot] beNil];
        });
        
        it(@"should exist", ^{
            [[stack shouldNot] beNil];
        });
        
        it(@"should be able to push and get top", ^{
            [stack push:2.3];
            [[theValue([stack top]) should] equal:theValue(2.3)];
            
            [stack push:4.6];
            [[theValue([stack top]) should] equal:4.6 withDelta:0.001];
        });
        
        it(@"should equal contains 0 element", ^{
            [[theValue([stack count]) should] beZero];
        });
        
        it(@"should equal contains 0 element", ^{
            [[stack should] haveCountOf:0];
        });
        
    });
    
    
    context(@"when new created and pushed 4.6", ^{
        __block VVStack *stack = nil;
        beforeEach(^{
            stack = [VVStack new];
            [stack push:4.6];
        });
        
        afterEach(^{
            stack = nil;
        });
        
        it(@"can be poped and the value equals 4.6", ^{
            [[theValue([stack pop]) should] equal:theValue(4.6)];
        });
        
        it(@"should contains 0 element after pop", ^{
            [stack pop];
            [[stack should] beEmpty]; 
        });
        
    });
    
});

//beforeAll(aBlock) - 当前scope内部的所有的其他block运行之前调用一次
//afterAll(aBlock) - 当前scope内部的所有的其他block运行之后调用一次
//beforeEach(aBlock) - 在scope内的每个it之前调用一次，对于context的配置代码应该写在这里
//afterEach(aBlock) - 在scope内的每个it之后调用一次，用于清理测试后的代码
//specify(aBlock) - 可以在里面直接书写不需要描述的测试
//pending(aString, aBlock) - 只打印一条log信息，不做测试。这个语句会给出一条警告，可以作为一开始集中书写行为描述时还未实现的测试的提示。
//xit(aString, aBlock) - 和pending一样，另一种写法。因为在真正实现时测试时只需要将x删掉就是it，但是pending语意更明确，因此还是推荐pending

SPEC_END
