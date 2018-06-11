//
//  ModulBViewController.m
//  huhsxModulB
//
//  Created by 胡浩三雄 on 2018/6/11.
//

#import "ModulBViewController.h"

@interface ModulBViewController ()

@end

@implementation ModulBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    if (!_image) {
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        NSString *path = [bundle pathForResource:@"anime-girl-scenic-raining-animal-ears-profile-view-night-dark-theme.png"
                                          ofType:nil
                                     inDirectory:nil];
        
        _image = [UIImage imageWithContentsOfFile:path];
    }
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:_image];
    imageView.frame = CGRectMake(0, 64, self.view.frame.size.width, 200);
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageView];
    
    //不喜欢
    UIButton *cancel = [[UIButton alloc]initWithFrame:CGRectMake(0, 200+64, self.view.frame.size.width/2.0, 40)];
    [cancel setTitle:@"Dislike" forState:UIControlStateNormal];
    [cancel setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [cancel addTarget:self action:@selector(cancelAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:cancel];
    
    //喜欢
    UIButton *done = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2.0, 200+64, self.view.frame.size.width/2.0, 40)];
    [done setTitle:@"Like" forState:UIControlStateNormal];
    [done setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [done addTarget:self action:@selector(doneAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:done];
}

- (void)cancelAction {
    
    if (self.block) {
        self.block(NO);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)doneAction {
    
    if (self.block) {
        self.block(YES);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
