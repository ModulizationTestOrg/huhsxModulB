//
//  ModulBViewController.h
//  huhsxModulB
//
//  Created by 胡浩三雄 on 2018/6/11.
//

#import <UIKit/UIKit.h>

typedef void(^callBack)(BOOL isLike);

@interface ModulBViewController : UIViewController

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, copy  ) callBack block;

@end
