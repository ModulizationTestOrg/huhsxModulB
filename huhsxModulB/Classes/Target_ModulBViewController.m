//
//  Target_ModulBViewController.m
//  huhsxModulB
//
//  Created by 胡浩三雄 on 2018/6/11.
//

#import "Target_ModulBViewController.h"
#import "ModulBViewController.h"

@implementation Target_ModulBViewController

- (UIViewController *)Action_ModulBViewController:(NSDictionary *)param
{
    ModulBViewController *vc = [[ModulBViewController alloc]init];
    vc.image = param[@"image"];
    vc.block = param[@"block"];
    return vc;
}

@end
