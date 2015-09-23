//
//  FISTicTacToeGame.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISTicTacToeGame.h"

@interface FISTicTacToeGame ()

@property (nonatomic, strong) NSMutableArray *board;

@end


@implementation FISTicTacToeGame

-(instancetype)init
{
    self = [super init];
    if(self) {
        // Do initialization of your game here, inside this if statement.
        // Leave the rest of this method alone :)

    }

    return self;
}

-(void)resetBoard
{

}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    return @"";
}

-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    return YES;
}

-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row
{

}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row
{

}

-(NSString *)winningPlayer
{
    return @"";
}

-(BOOL)isADraw
{
    return NO;
}

@end
