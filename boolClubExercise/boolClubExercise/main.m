//
//  main.m
//  boolClubExercise
//
//  Created by Jason Wang on 6/7/15.
//  Copyright (c) 2015 Jason Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Jack's Profile
        
        // Plan A
        BOOL celebrity = NO;
        BOOL bandMember = NO;
        BOOL rich = NO;
        BOOL hellaSwag = NO;
        BOOL knowSomeoneInTheClubExclusive = NO;
        
        //Plan B
        BOOL publishedAPP = NO;
        BOOL boolLogic = NO;
        BOOL coolShirt = NO;
        BOOL proBeatBoxer = NO;
        
        //Plan Loser
        BOOL single = NO;
        BOOL programmer = NO;
        
        
        // Exclusive Club
        if (celebrity || bandMember || rich || (hellaSwag && knowSomeoneInTheClubExclusive)) {
            NSLog(@"Welcome to the Exclusive club");
            
        // LESS Exclusive Club
        } else if (publishedAPP || boolLogic || coolShirt || proBeatBoxer) {
            NSLog(@"Welcome to the LE Club");
        }
        // Hello Grandma!!
          else {
            if (single) {
                NSLog(@"GJ bro, go play with your grandma");
                NSLog(@"Should of dated Stacey. Now grandma is going to nag about you finding a gf");
            }
            if (programmer) {
                NSLog(@"GJ bro, go play with your grandma");
                NSLog(@"Grandma thinks you play with computer too much that's why your single");
            } else {
                NSLog(@"You have no Plan");
            }
            
        }
        
    }
    return 0;
}


/*
 Scenario:
 You are going out for the night. You have a few options and you pursue
 them in order of interest.
 
 Plan A: Exclusive club
 
 Shoe In:
 Be a celebrity
 Be in the band
 Be rich
 
 Otherwise:
 "Hella Swag" and invited by someone who got in to the club.
 Enough money to buy off bouncer
 
 Plan B: Less exclusive / way cooler club
 
 Shoe In:
 - App in the App Storeâ„¢
 - Must pass boolean logic riddle
 - Wearing a t-shirt that makes the bouncer mildly entertained
 - Drop a beat so hard that it literally brings down the house
 next door
 
 Plan C: Playing Uno w/ grandma
 
 - If you're single grandma keeps nagging you about settling down
 so that she can have some great-grand babies.
 - If you're programmer, grandma asks you why you don't have a real
 job.
 */