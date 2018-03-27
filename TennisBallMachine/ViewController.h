//
//  ViewController.h
//  TennisBallMachine
//
//  Created by Andrea Fletcher on 3/26/18.
//  Copyright © 2018 Andrea Fletcher. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UILabel *_velocityLabel;
    IBOutlet UISlider *_velocitySlider;
    
    IBOutlet UILabel *_frequencyLabel;
    IBOutlet UISlider *_frequencySlider;
}

@property (nonatomic, retain) UILabel *velocityLabel;
@property (nonatomic, retain) UISlider *velocitySlider;

@property (nonatomic, retain) UILabel *frequencyLabel;
@property (nonatomic, retain) UISlider *frequencySlider;

- (IBAction)velocitySliderValueDidChange:(id)sender;
- (IBAction)frequencySliderValueDidChange:(id)sender;

@end

