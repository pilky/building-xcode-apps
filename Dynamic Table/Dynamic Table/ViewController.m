//
//  ViewController.m
//  Dynamic Table
//
//  Created by Martin Pilkington on 27/02/2014.
//
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController {
	NSMutableArray *names;
}

- (void)viewDidLoad {
	names = [NSMutableArray array];
	for (NSUInteger i = 0; i < 5; i++) {
		[names addObject:[self randomName]];
	}
}

#pragma mark -
#pragma mark Table Data Source Required Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return names.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BasicCell"];
	if (!cell) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"BasicCell"];
	}
	[cell.textLabel setText:names[indexPath.row]];
	return cell;
}





#pragma mark -
#pragma mark Adding Rows

- (IBAction)addRow:(id)sender {
	//Step 2 - Adding Rows
//	[names addObject:[self randomName]];
//	NSIndexPath *indexPath = [NSIndexPath indexPathForRow:(names.count - 1)
//												inSection:0];
//	[self.tableView insertRowsAtIndexPaths:@[indexPath]
//						  withRowAnimation:UITableViewRowAnimationAutomatic];
}






#pragma mark -
#pragma mark Editing Rows


//Step 3 - Deleting Rows
//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
//	[names removeObjectAtIndex:indexPath.row];
//	[self.tableView deleteRowsAtIndexPaths:@[indexPath]
//						  withRowAnimation:UITableViewRowAnimationAutomatic];
//}




- (IBAction)toggleEditing:(id)sender {
	//Step 4.1 - Enabling Editing
//	[self.tableView setEditing:!self.tableView.isEditing animated:YES];
}


//Step 4.2 - Moving Rows
//- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
//	NSString *movedName = names[fromIndexPath.row];
//	[names removeObjectAtIndex:fromIndexPath.row];
//	[names insertObject:movedName atIndex:toIndexPath.row];
//}











- (NSString *)randomName {
	NSArray *potentialNames = @[
		@"Alice",
		@"Bob",
		@"Carol",
		@"Dan",
		@"Emily",
		@"Frank",
		@"Ginny",
		@"Harold",
		@"Isabelle",
		@"Jeff",
		@"Kim",
		@"Liam",
		@"Mary",
		@"Natalie",
		@"Oliver",
		@"Paula",
		@"Quentin",
		@"Rachel",
		@"Steven",
		@"Tasmin",
		@"Usain",
		@"Valerie",
		@"Walter",
		@"Xavier",
		@"Yvonne",
		@"Zane",
	];
	
	if (names.count == 0) srandom(time(NULL));
	return potentialNames[(random() % potentialNames.count)];
}

@end
