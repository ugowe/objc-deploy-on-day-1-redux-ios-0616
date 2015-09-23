//
//  FISComputerPlayer.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISComputerPlayer.h"

@implementation FISComputerPlayer

+(BOOL)isEnabled
{
    return YES;
}

-(FISTicTacToePosition)nextPlay
{
//    return FISTicTacToePositionMake(0, 0);

    while(YES) {
        NSUInteger column = arc4random_uniform(3);
        NSUInteger row = arc4random_uniform(3);

        if([self.game canPlayAtColumn:column row:row]) {
            return FISTicTacToePositionMake(column, row);
        }
    }
}

@end
