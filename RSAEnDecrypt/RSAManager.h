//
//  RSAManager.h
//  RSAEnDecrypt
//
//  Created by jgw2 on 14-9-22.
//  Copyright (c) 2014年 jgw2. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSAManager : NSObject
{
    SecKeyRef publicKey;
    SecKeyRef privateKey;
    NSData *publicTag;
    NSData *privateTag;
}

- (void)encryptWithPublicKey:(uint8_t *)plainBuffer cipherBuffer:(uint8_t *)cipherBuffer;
- (void)decryptWithPrivateKey:(uint8_t *)cipherBuffer plainBuffer:(uint8_t *)plainBuffer;
- (SecKeyRef)getPublicKeyRef;
- (SecKeyRef)getPrivateKeyRef;
- (void)testAsymmetricEncryptionAndDecryption;
- (void)generateKeyPair:(NSUInteger)keySize;
@end
