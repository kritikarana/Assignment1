//
//  ViewController.m
//  Assignment1
//
//  Created by admin on 4/5/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property (nonatomic, strong) NSString *Username;
//@property (nonatomic, strong) NSString *Password;
@property (weak, nonatomic) IBOutlet UIButton *BtnLogin;
@property (weak, nonatomic) IBOutlet UIButton *BtnClear;
@property (weak, nonatomic) IBOutlet UITextField *UsernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *PasswordTextField;

- (IBAction)loginTapped:(id)sender;
- (IBAction)clearTapped:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"View Did Load");
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog (@"View will appear");
}

- (void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog (@"View did appear");
}

- (void) viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog (@"View did disappear");
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [self.view endEditing:YES];
    
}

#pragma UITextFieldDelegate methods

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;
{
    NSLog(@"Text Field Should Begin Editing");
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField;
{
    NSLog(@"text Field Did End Editing");
}


//#define ACCEPTABLE_CHARACTERS @" ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_."

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
//    NSLog(@"shouldChangeCharactersInRange");
    if ([string isEqualToString:@"!"])
        return NO;
    if ([string isEqualToString:@"@"])
        return NO;
    if ([string isEqualToString:@"#"])
        return NO;
    if ([string isEqualToString:@"$"])
        return NO;
    if ([string isEqualToString:@"%"])
        return NO;
    if ([string isEqualToString:@"^"])
        return NO;
    if ([string isEqualToString:@"&"])
        return NO;
    if ([string isEqualToString:@"*"])
        return NO;
    if ([string isEqualToString:@"("])
        return NO;
    if ([string isEqualToString:@")"])
        return NO;
    if ([string isEqualToString:@"+"])
        return NO;
    if ([string isEqualToString:@"="])
        return NO;
    if ([string isEqualToString:@"-"])
        return NO;
     NSLog(@"shouldChangeCharactersInRange");
    return YES;

    
  //  NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:ACCEPTABLE_CHARACTERS] invertedSet];
    
  //  NSString *filtered = [[string componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
    
   // return [string isEqualToString:filtered];
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    return YES;
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

- (IBAction)loginTapped:(id)sender {
    NSLog(@"Username is %@ and Password is : %@", self.UsernameTextField.text, self.PasswordTextField.text);
    
}

- (IBAction)clearTapped:(id)sender {
    self.UsernameTextField.text=@"";
    self.PasswordTextField.text=@"";
}

@end
