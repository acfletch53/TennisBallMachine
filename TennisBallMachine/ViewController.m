//
//  ViewController.m
//  TennisBallMachine
//
//  Created by Andrea Fletcher on 3/26/18.
//  Copyright © 2018 Andrea Fletcher. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_velocitySlider addTarget:self action:@selector(velocitySliderValueDidChange:) forControlEvents:UIControlEventValueChanged];
    [_frequencySlider addTarget:self action:@selector(frequencySliderValueDidChange:) forControlEvents:UIControlEventValueChanged];
    
    [self updateVelocityLabel];
    [self updateFrequencyLabel];
}

- (IBAction)velocitySliderValueDidChange:(UISlider *)sender {
    [self updateVelocityLabel];
}

- (void)updateVelocityLabel {
    _velocityLabel.text = [NSString stringWithFormat:@"Velocity: %.1f mph", [_velocitySlider value]];
}

- (IBAction)frequencySliderValueDidChange:(UISlider *)sender {
    [self updateFrequencyLabel];
}

- (void)updateFrequencyLabel {
    // Round the value to a half or a full second
    float frequencyValue = round([_frequencySlider value] * 2.0) / 2.0;
    // Set the sliders value to this
    [_frequencySlider setValue:frequencyValue];
    //Update text
    _frequencyLabel.text = [NSString stringWithFormat:@"Frequency: %.1f seconds", frequencyValue];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
