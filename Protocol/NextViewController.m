




//
//  NextViewController.m
//

#import "NextViewController.h"

@interface NextViewController()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation NextViewController


- (IBAction)buttonBack:(id)sender {
    
    [self.delegate sendValue:_textField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end





