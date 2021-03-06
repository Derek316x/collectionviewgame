//
//  SKPViewController.m
//  Sprite Kit Pong
//
//  Created by Božidar Ševo on 10/05/14.
//  Copyright (c) 2014 Božidar Ševo. All rights reserved.
//

#import "SKPViewController.h"
#import "SKPMyScene.h"
#import <SpriteKit/SpriteKit.h>

@implementation SKPViewController

-(void)loadView{
    [super loadView];
    // Configure the view.
    SKView *skView = (SKView*)self.view;
    
    skView.showsFPS = NO;
    skView.showsNodeCount = NO;
    
    // Create and configure the scene.
    CGFloat w = skView.bounds.size.width;
    CGFloat h = skView.bounds.size.height;
    CGSize sceneSize = CGSizeMake(w, h);
    //to make sure that scene size is made for landscape mode :)
    if (h > w) {
        sceneSize = CGSizeMake(h, w);
    }
    
    SKScene * scene = [SKPMyScene sceneWithSize:sceneSize];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];

//    // Configure the view.
//    SKView *skView = (SKView*)self.view;
//    
//    skView.showsFPS = NO;
//    skView.showsNodeCount = NO;
//    
//    // Create and configure the scene.
//    CGFloat w = skView.bounds.size.width;
//    CGFloat h = skView.bounds.size.height;
//    CGSize sceneSize = CGSizeMake(w, h);
//    //to make sure that scene size is made for landscape mode :)
//    if (h > w) {
//        sceneSize = CGSizeMake(h, w);
//    }
//    
//    SKScene * scene = [SKPMyScene sceneWithSize:sceneSize];
//    scene.scaleMode = SKSceneScaleModeAspectFill;
//    
//    // Present the scene.
//    [skView presentScene:scene];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

-(BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
