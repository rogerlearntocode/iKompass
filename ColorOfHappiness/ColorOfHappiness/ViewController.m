//
//  ViewController.m
//  ColorOfHappiness
//
//  Created by roger.tan on 12/7/15.
//  Copyright (c) 2015 iKompass. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate,UITableViewDataSource>
@property NSArray *colorsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIColor *red = [UIColor redColor];
    UIColor *green = [UIColor greenColor];
    UIColor *yellow = [UIColor yellowColor];
    UIColor *orange = [UIColor orangeColor];
    UIColor *blue = [UIColor blueColor];
    UIColor *gray = [UIColor grayColor];
    
    self.colorsArray = [NSArray arrayWithObjects:red, green, yellow, orange, blue, gray, nil];
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.colorsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
    
    //cell.textLabel.text = [NSString stringWithFormat:@"Row%li", indexPath.row];
   // if (indexPath.row == 0){
     //   cell.backgroundColor = [UIColor redColor];
    //}
    //else if(indexPath.row == 1){
      //  cell.backgroundColor = [UIColor greenColor];
    //}
    //else if(indexPath.row == 2){
    //    cell.backgroundColor = [UIColor yellowColor];
    //}
    //else if(indexPath.row == 3){
      //  cell.backgroundColor = [UIColor blueColor];
   // }
    
    cell.backgroundColor = [self.colorsArray objectAtIndex:indexPath.row];
                          
    return cell;
}
        

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
