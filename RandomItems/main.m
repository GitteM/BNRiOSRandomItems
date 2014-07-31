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
        
        // Create a mutable array object, store its address in items variable
        
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        // Send the message addObject: to the NSMutableArray pointed to
        // by the variable items, passing a string each time
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, insertObject:atIndex:, to that same array object
        
        [items insertObject:@"Zero" atIndex:0];
        
        // For every item in the items array ...
        
        for (NSString *item in items) {
            
            // Log the description of item
            
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc]init];
        
        // This creates an NSString, "Red Sofa" and gives it to the BNRItem
        item.itemName = @"Red Sofa";
        
        // This creates an NSString, "A1B2C" and gives it to the BNRItem
        item.serialNumber = @"A1B2C";
        
        // This sends the value 100 to be used as the valueInDollars of this BNRItem
        item.valueInDollars = 100;
        
        NSLog(@"%@", item);
        
        // Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}

