//
//  ViewController.m
//  Zad1
//
//

#import "ViewController.h"

@interface ViewController ()

+(NSString *)surname;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(IBAction)enter{
    NSString *yourName = self.inputField.text;
    NSString *yourSurname = self.inputSurname.text;
    NSString *myName = @"Jakub";
    NSString *message;
    
    if([yourName length] == 0){
        yourName = @"World";
    }
    
    if([yourName isEqualToString:myName]){
        message = [NSString stringWithFormat:@"Hello %@! We have the same name:)", yourName];
    }
    else{
        message = [NSString stringWithFormat:@"Hello %@!", yourName];
    }
    
    self.messageLabel.text = message;
    
    
}

-(NSString *)getter : (NSString *)getSurname{
    return ViewController.surname;
}


-(void)setter: (NSString *)newSurname{
    ViewController.surname = newSurname;
}


@end
