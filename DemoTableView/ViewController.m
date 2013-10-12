//
//  ViewController.m
//  DemoTableView
//
//  Created by Tekhne on 10/12/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self cargadoDePersonajes];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Cargado de Personajes

-(void) cargadoDePersonajes {
    
    Personaje *donkeyKong = [[Personaje alloc] init];
    [donkeyKong setNombre:@"Donkey Kong"];
    [donkeyKong setConsola:@"SNES"];
    [donkeyKong setFechaLanzamiento:[NSDate date]];
    [donkeyKong setImagen:[UIImage imageNamed:@"donkey-kong.jpg"]];
    
    Personaje *kingBowser = [[Personaje alloc] init];
    [kingBowser setNombre:@"King Bowser"];
    [kingBowser setConsola:@"NES"];
    [kingBowser setFechaLanzamiento:[NSDate date]];
    [kingBowser setImagen:[UIImage imageNamed:@"king-bowser.jpg"]];

    Personaje *luigi = [[Personaje alloc] init];
    [luigi setNombre:@"Luigi"];
    [luigi setConsola:@"Nintendo Wii"];
    [luigi setFechaLanzamiento:[NSDate date]];
    [luigi setImagen:[UIImage imageNamed:@"luigi.jpg"]];

    Personaje *mario = [[Personaje alloc] init];
    [mario setNombre:@"Mario"];
    [mario setConsola:@"SNES"];
    [mario setFechaLanzamiento:[NSDate date]];
    [mario setImagen:[UIImage imageNamed:@"mario.jpg"]];

    Personaje *toad = [[Personaje alloc] init];
    [toad setNombre:@"Toad"];
    [toad setConsola:@"Nintendo Wii"];
    [toad setFechaLanzamiento:[NSDate date]];
    [toad setImagen:[UIImage imageNamed:@"toad.jpg"]];

    Personaje *yoshi = [[Personaje alloc] init];
    [yoshi setNombre:@"Yoshi"];
    [yoshi setConsola:@"Nintendo Family"];
    [yoshi setFechaLanzamiento:[NSDate date]];
    [yoshi setImagen:[UIImage imageNamed:@"yoshi.jpg"]];
    
    self.personajes = @[donkeyKong, kingBowser,luigi,mario,toad,yoshi];
}

#pragma mark Metodos de la tabla personajes

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.personajes count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //UITableViewCell *celda = [tableView dequeueReusableCellWithIdentifier:@"personajeCell"];
    
    UITableViewCell *celda = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"personajeCell"];
    
    Personaje *personaje = [self.personajes objectAtIndex:indexPath.row];
    
    celda.textLabel.text = personaje.nombre;
    celda.detailTextLabel.text = personaje.consola;
    celda.imageView.image = personaje.imagen;
    
    return celda;
}



@end
