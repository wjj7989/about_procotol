







//
//  NextViewController.h
//

#import <UIKit/UIKit.h>

@protocol NextViewControllerDelegate <NSObject>

- (void)sendValue: (NSString *)value;

@end


@interface NextViewController : UIViewController

@property (weak, nonatomic) id<NextViewControllerDelegate> delegate;

@end
