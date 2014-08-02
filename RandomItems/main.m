//
//  main.m
//  RandomItems
//
//  Created by Brigitte Michau on 2014/07/31.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        BNRItem *anotherInitializer = [[BNRItem alloc] initWithItemName:@"AnotherItem" serialNumber:@"A1B2C"];
        NSLog(@"Chapter 1, Silver Challenge: Another Initializer: \n %@", anotherInitializer);
        
        items = nil;
    }
    
    return 0;
}

