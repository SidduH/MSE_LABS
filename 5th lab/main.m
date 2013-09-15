#import<Foundation/Foundation.h>
#import "Phone.h"
#import "PhoneBook.h"

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	Phone *p1 = [[Phone alloc] init];
	Phone *p2 = [[Phone alloc] init];
	Phone *p3 = [[Phone alloc] init];
	
	PhoneBook *book = [[PhoneBook alloc]init];
	[book initial];
	[p1 setName:@"abc"];
	[p1 setEmail:@"abc@gmail.com"];
	[p1 setNum:123];
	
	[p2 setName:@"def"];
	[p2 setEmail:@"def@gmail.com"];
	[p2 setNum:456];
	
	[p3 setName:@"ghi"];
	[p3 setEmail:@"ghi@gmail.com"];
	[p3 setNum:789];
	//PhoneBook *mybook =[[PhoneBook alloc]initWithName:@"abc's  address book"];
	//NSLog(@"Enteries %i ",[mybook addEntry]);
	
	[book addEntry:p1];
	[book addEntry:p2];
	[book addEntry:p3];
	
	
	
	//remove
	[book delEntry:p2];
	
	//list all
	[book listAll];
	
	//count
	NSLog(@"Number of Entries: %d\n", [book countAll]);
	
	//Compare
	[book searchWithName:@"def"];
	
	[pool release];
	
	return 0;
}
