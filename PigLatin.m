//
//  PigLatin.m
//  Lab13
//
//  Created by Diego Espinosa on 2020-04-06.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//
#import "PigLatin.h"

@implementation NSString (PigLatin)
-(NSString *)stringByPigLatinization {
    NSMutableArray *letters = [[NSMutableArray alloc] initWithCapacity:[self length]];
    for (int i=0; i < [self length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [self characterAtIndex:i]];
        [letters addObject:ichar];
    }
    NSCharacterSet *consonants = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUYaeiouy"];
    NSMutableArray *fragment = [[self componentsSeparatedByCharactersInSet:consonants] mutableCopy];
    NSString *Piece = [fragment objectAtIndex:0];
    NSMutableArray *fragmentrange = [[NSMutableArray alloc] initWithCapacity:[Piece length]];
    for (int i=0; i < [Piece length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [Piece characterAtIndex:i]];
        [fragmentrange addObject:ichar];
    }
    NSRange range = NSMakeRange(0, [Piece length]);
    [letters removeObjectsInRange:range];
    [letters addObject:Piece];
    [letters addObject:@"ay"];
    return [letters componentsJoinedByString:@""];
}
@end
