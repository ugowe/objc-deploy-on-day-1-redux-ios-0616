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
        // Do initialization of your game here!
        // Hint: we need to set up a blank board in self.board.
        // Is there another method whose job it is to do that? Could you implement that method and call it from here?
        [self resetBoard];
    }

    return self;
}

-(void)resetBoard
{
    self.board = [@[ [@[ @"", @"", @"" ] mutableCopy],
                     [@[ @"", @"", @"" ] mutableCopy],
                     [@[ @"", @"", @"" ] mutableCopy] ] mutableCopy];
}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    return self.board[column][row];
}

-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    return [[self playerAtColumn:column row:row] isEqualToString:@""];
}

-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    self.board[column][row] = @"X";
}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    self.board[column][row] = @"O";
}

-(NSString *)winningPlayer
{
    typedef struct {
        NSUInteger column;
        NSUInteger row;
    } BoardPosition;

    /*
        0 0     1 0     2 0
        0 1     1 1     2 1
        0 2     1 2     2 2
     */


    BoardPosition winningCombos[][3] = {
        // Columns
        {{0, 0}, {0, 1}, {0, 2}},
        {{1, 0}, {1, 1}, {1, 2}},
        {{2, 0}, {2, 1}, {2, 2}},

        // Rows
        {{0, 0}, {1, 0}, {2, 0}},
        {{0, 1}, {1, 1}, {2, 1}},
        {{0, 2}, {1, 2}, {2, 2}},

        // Diagonals
        {{0, 0}, {1, 1}, {2, 2}},
        {{2, 0}, {1, 1}, {0, 2}}
    };

    for(NSUInteger comboIndex = 0; comboIndex < 8; comboIndex++) {
        NSMutableArray *playersAtComboPositions = [[NSMutableArray alloc] init];

        for(NSUInteger positionIndex = 0; positionIndex < 3; positionIndex++) {
            BoardPosition position = winningCombos[comboIndex][positionIndex];
            [playersAtComboPositions addObject:[self playerAtColumn:position.column row:position.row]];
        }

        if([playersAtComboPositions[0] isEqualToString:playersAtComboPositions[1]] &&
           [playersAtComboPositions[1] isEqualToString:playersAtComboPositions[2]] &&
           [playersAtComboPositions[0] length])
        {
            return playersAtComboPositions[0];
        }
    }

    return @"";
}

-(BOOL)isADraw
{
    for(NSUInteger column = 0; column < 3; column++) {
        for(NSUInteger row = 0; row < 3; row++) {
            if([self playerAtColumn:column row:row].length == 0) {
                return NO;
            }
        }
    }

    return YES;
}

@end
