//
//  ViewController.m
//  HolidayDestinations
//
//  Created by roger.tan on 12/7/15.
//  Copyright (c) 2015 iKompass. All rights reserved.
//

#import "HomeViewController.h"
#import "HolidayViewController.h"
@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UITextField *TravelerName;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    HolidayViewController *destinationViewController = segue.destinationViewController;
    
    destinationViewController.title = [sender currentTitle];
   
    destinationViewController.travellerNameEntered = self.TravelerName.text;
    
    if ([segue.identifier isEqualToString:@"Australia"])
    {
        
        destinationViewController.imageOfCountry = [UIImage imageNamed:@"Australia"];
        
        destinationViewController.priceRelatedToCountry = @"2000.00";
        destinationViewController.travelCountry =@"Australia";
        
    } else{
        destinationViewController.imageOfCountry = [UIImage imageNamed:@"Greece"];
        
        destinationViewController.priceRelatedToCountry = @"3000.00";
        destinationViewController.travelCountry =@"Greece";
 
    
    }
}

-(IBAction)unwindToThisViewController:(UIStoryboardSegue *) segue {

}
@end
