//
//  ViewController.h
//  RealmioSandbox
//
//  Created by Vitor Kawai Sala on 20/03/15.
//  Copyright (c) 2015 Vitor Kawai Sala. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Realm/Realm.h>
#import "Entidade/Melancia.h"

@interface ViewController : UIViewController

@property RLMRealm *realm;
@property UILabel *label;

@end

