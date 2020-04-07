//
//  main.m
//  Lab13
//
//  Created by Diego Espinosa on 2020-04-06.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PigLatin.h"

NSString* getUserInput(){
    int maxLenght = 255;
    char inputChars[maxLenght];
    char *result = fgets(inputChars, maxLenght, stdin);
    if(result != NULL){
        NSString *theString = [[NSString stringWithUTF8String:inputChars]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        return theString;
    }
    return @"@";
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *user_input = getUserInput();
        NSString *string = user_input;
        NSArray *wordsArray  = [string componentsSeparatedByString:@" "];
        NSLog(@"%@ %@", [[wordsArray[0] stringByPigLatinization]capitalizedString], [[wordsArray[1] stringByPigLatinization]capitalizedString]);
    }
    return 0;
}
