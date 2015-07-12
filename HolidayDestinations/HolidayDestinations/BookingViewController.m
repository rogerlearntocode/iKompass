//
//  BookingViewController.m
//  HolidayDestinations
//
//  Created by roger.tan on 12/7/15.
//  Copyright (c) 2015 iKompass. All rights reserved.
//

#import "BookingViewController.h"

@interface BookingViewController ()

@property (weak, nonatomic) IBOutlet UILabel *NameLabel;
@property (weak, nonatomic) IBOutlet UILabel *DestinationLabel;
@property (weak, nonatomic) IBOutlet UILabel *PriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *TaxLabel;
@property (weak, nonatomic) IBOutlet UILabel *TotalPriceLabel;

@end

@implementation BookingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.NameLabel.text = self.travellerNameConfirm;
    self.DestinationLabel.text = self.destinationConfirm;
    self.PriceLabel.text = self.priceConfirm;
    self.TaxLabel.text =@"7";
    
    [self doTotalPriceCalculation];

}

-(void) doTotalPriceCalculation{
    float taxAmount = self.TaxLabel.text.floatValue;
    float priceAmount = self.PriceLabel.text.floatValue;
    float totalPrice = ((taxAmount*priceAmount)/100
                        +priceAmount);
    self.TotalPriceLabel.text =[NSString stringWithFormat:@"%.2f",totalPrice];
                        
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
