//
//  ViewController.m
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()<NextViewControllerDelegate>

@property (nonatomic, strong) NextViewController *vc;

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    _vc = [storyboard instantiateViewControllerWithIdentifier:@"vc"];
    _vc.delegate = self;
    
}


- (IBAction)buttonTurn:(id)sender {
    
    [self presentViewController:_vc animated:YES completion:nil];
}

#pragma mark - NextViewControllerDelegate
- (void)sendValue:(NSString *)value
{
    _textLabel.text = value;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
