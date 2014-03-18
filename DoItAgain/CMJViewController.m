//
//  CMJViewController.m
//  DoItAgain
//
//  Created by Claire Jencks on 3/17/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "CMJViewController.h"


//Declare that your ViewController adheres to both the UITableViewDelegate and UITableViewDataSource protocols
@interface CMJViewController () <UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray* items;
    
}
@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation CMJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	//instantiate the items array and add the following three strings to it: “One”, “Two”, and “Three”
    items = [[NSMutableArray alloc]initWithObjects:@"One",@"Two",@"Three", nil];

    
    //Implement the necessary delegate and dataSource methods to allow the tableView to display data (* hint Xcode will warn you about missing methods if you did the above step correctly!)

}
  //the datasource method that allows the tableView to display data
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
    {
        //array calling "items" mutable array from above (in this case returns a count of three)
        return [items count];
    }


//Make the tableView show the texts from your items instance variable, one text per row.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    //setting a cell variable
    UITableViewCell *cell;
    //making it so the cell recycles (dequeues) once it goes off screen
    cell = [tableView dequeueReusableCellWithIdentifier:@"myReuseIdentifier"];
    //setting cell text with whatever is input into the text box?????
    cell.textLabel.text = [NSString stringWithFormat:@"string row = %i", indexPath.row];
    return cell;

}





//    cell = [tableView dequeueReusableCellWithIdentifier:@"myReuseIdentifier"];
//    cell.textLabel.text = [NSString stringWithFormat:@"string row = %i", indexPath.row];
//    cell.textLabel.text = items[indexPath.row];
//    return cell;
//}


@end
