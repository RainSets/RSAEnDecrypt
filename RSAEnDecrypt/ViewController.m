//
//  ViewController.m
//  RSAEnDecrypt
//
//  Created by jgw2 on 14-9-22.
//  Copyright (c) 2014年 jgw2. All rights reserved.
//

#import "ViewController.h"

#import "RSAManager.h"

#import "Base64.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
//    RSAManager *rsaM = [[RSAManager alloc] init];
//    [rsaM testAsymmetricEncryptionAndDecryption];
    
    NSString *inputString = @"Hello World!";
    NSData *inputData = [inputString dataUsingEncoding:NSUTF8StringEncoding];
    
    //encode
    NSString *encodedString = [inputData base64EncodedString];
    NSLog(@"encode string==%@",encodedString);
//    NSAssert([encodedString isEqualToString:@"SGVsbG8gV29ybGQh"], @"OutputEqualsInput test failed");
    
    //decode
    NSData *outputData = [NSData dataWithBase64EncodedString:@"UirK/9/LeJy+/GIZThoBzDs1OUmd0TLOsyrrbw1gikbu8cWPnfueZITx1TegzzJ+749sJVmZxvV61AbA9AXihPMHbg2VpLgeHDGWxZQcRWFuJFhj+VNLroq2/TsJ+wVCu10KFZ3vB3ECyTId3D1pzzJxX4M9wPECAyNV2fz+QmI="];
    NSString *outputString = [[NSString alloc] initWithData:outputData encoding:NSUTF8StringEncoding];
    NSLog(@"out put string==%@",outputString);
//    NSAssert([outputString isEqualToString:inputString], @"OutputEqualsInput test failed");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
