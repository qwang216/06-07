//
//  ViewController.m
//  GoingToClub
//
//  Created by Jason Wang on 6/7/15.
//  Copyright (c) 2015 Jason Wang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameEntry;
@property (weak, nonatomic) IBOutlet UISwitch *celebritytog;
@property (weak, nonatomic) IBOutlet UISwitch *bandtog;
@property (weak, nonatomic) IBOutlet UISwitch *incometog;
@property (weak, nonatomic) IBOutlet UISwitch *swagtog;
@property (weak, nonatomic) IBOutlet UISwitch *invitetog;
@property (weak, nonatomic) IBOutlet UISwitch *tiptog;
@property (weak, nonatomic) IBOutlet UISwitch *appstoretog;
@property (weak, nonatomic) IBOutlet UISwitch *boollogictog;
@property (weak, nonatomic) IBOutlet UISwitch *tshirttog;
@property (weak, nonatomic) IBOutlet UISwitch *beatboxertog;
@property (weak, nonatomic) IBOutlet UISwitch *singletog;
@property (weak, nonatomic) IBOutlet UISwitch *programmertog;
@property (weak, nonatomic) IBOutlet UITextView *msgBox;

@end

@implementation ViewController


- (IBAction)buttonGo:(id)sender {
    NSString *name = self.nameEntry.text;
    
    BOOL celebritytog =self.celebritytog.on;
    BOOL bandtog = self.bandtog.on;
    BOOL incometog = self.incometog.on;
    BOOL swagtog = self.swagtog.on;
    BOOL invitetog = self.invitetog.on;
    BOOL tiptog = self.tiptog.on;
    BOOL appstoretog = self.appstoretog.on;
    BOOL boollogictog = self.boollogictog.on;
    BOOL tshirttog = self.tshirttog.on;
    BOOL beatboxertog = self.beatboxertog.on;
    BOOL singletog = self.singletog.on;
    BOOL programmertog = self.programmertog.on;
    
    // Exclusive Club
    if (celebritytog || bandtog || incometog || (swagtog && invitetog) || tiptog) {
        self.msgBox.text = [NSString stringWithFormat:@"Welcome %@ to the Exclusive Club", name];
        
        // LESS Exclusive Club
    } else if (appstoretog || boollogictog || tshirttog || beatboxertog) {
        self.msgBox.text = [NSString stringWithFormat:@"Welcome %@! to the LE Club", name];
    }
    
    // Hello Grandma!!
    else if (singletog && programmertog) {
        self.msgBox.text = [NSString stringWithFormat:@"Hi %@! Should of dated Stacey. Now grandma is going to nag about you finding a gf.  Grandma thinks you play with computer too much that's why your single", name];
    }else if (singletog) {
        self.msgBox.text = [NSString stringWithFormat:@"Hi %@! Should of dated Stacey. Now grandma is going to nag about you finding a gf", name];
        
    } else if (programmertog) {
        self.msgBox.text = [NSString stringWithFormat:@"Hi %@! Grandma thinks you play with computer too much that's why your single", name];
        
    } else
        
        if (!celebritytog && !bandtog && !incometog && !swagtog && !invitetog && !tiptog && !appstoretog && !boollogictog && !tshirttog && !beatboxertog && !singletog && !programmertog){
            self.msgBox.text = [NSString stringWithFormat:@"I'm sorry %@! You have no Plan :(", name];
            
        }
    
}






- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
