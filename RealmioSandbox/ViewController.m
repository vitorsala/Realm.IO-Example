//
//  ViewController.m
//  RealmioSandbox
//
//  Created by Vitor Kawai Sala on 20/03/15.
//  Copyright (c) 2015 Vitor Kawai Sala. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, 500, 50)];
    [self.view addSubview:_label];

}


- (void) iniciandoBancoDeDados{
    NSArray *nomes = @[@"nome1",@"nome2"];


    _realm = [RLMRealm defaultRealm];

    Melancia *obj = [[Melancia alloc]init];
    obj.nome = [nomes firstObject];

    [_realm beginWriteTransaction];
    [_realm addObject:obj];
    [_realm commitWriteTransaction];

    RLMResults *resultadoDaBuscaPersistente;
    resultadoDaBuscaPersistente = [Melancia objectsWhere:@"nome CONTAINS 'n'"];

    Melancia *resultado = [resultadoDaBuscaPersistente firstObject];

    [_realm beginWriteTransaction];
    resultado.nome = [nomes lastObject];
    [_realm commitWriteTransaction];


    [Melancia allObjects];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
