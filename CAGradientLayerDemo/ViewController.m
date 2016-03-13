//
//  ViewController.m
//  CAGradientLayerDemo
//
//  Created by 金斗云 on 16/3/1.
//  Copyright © 2016年 亲点科技. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    CAShapeLayer *shapelayer;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.view.bounds.size.width / 2.f, self.view.bounds.size.height / 2.f)
                                                        radius:(self.view.bounds.size.width-60) / 2.f
                                                    startAngle:M_PI*(60)/180
                                                      endAngle:M_PI*(300)/180
                                                     clockwise:YES];
    
//
    
    UIBezierPath *path2 = [UIBezierPath bezierPath];
    
    [path2 moveToPoint:CGPointMake(0, 0)];
    [path2 addLineToPoint:CGPointMake(self.view.frame.size.width, 0)];

    
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    
    gradient.frame = self.view.bounds;
    
    gradient.colors = @[(id)[[UIColor redColor] CGColor] ,
                             //                             (id)[UIColor yellowColor].CGColor,
                             (id)[UIColor greenColor].CGColor,
                             (id)[UIColor purpleColor].CGColor
                             ];
    //改变方向   但是还没看明白  具体怎么改变
    
    //     The start and end points of the gradient when drawn into the layer's
    //     coordinate space. The start point corresponds to the first gradient
    //     stop, the end point to the last gradient stop. Both points are
    //     defined in a unit coordinate space that is then mapped to the
    //     layer's bounds rectangle when drawn. (I.e. [0,0] is the bottom-left
    //     corner of the layer, [1,1] is the top-right corner.) The default values
    //     are [.5,0] and [.5,1] respectively. Both are animatable.
    //
    //     gradient 的开始点和结束点 拉伸layer的坐标空间。
    //     起点对应于第一个倾斜点,终点到最后一个倾斜点。
    //     这两个点定义在一个单元坐标空间,然后映射到层的边界矩形时。
    //     (即[0,0]是layer的左下角，[1，1]是右上角)。
    //     默认值分别是[5，0]和[5,1]。都是动画。
    
    
    [gradient setStartPoint:CGPointMake(0, 0)];
    [gradient setEndPoint:CGPointMake(1, 0)];
    //
    //     gradientLayer.locations = @[@0.1,@0.45,@0.6,@1];
    

    
    
    CAShapeLayer *linelayer = [CAShapeLayer layer];
    
    
    linelayer.frame = self.view.bounds; // 与showView的frame一致
    linelayer.strokeColor = [UIColor lightGrayColor].CGColor; // 边缘线的颜色
    linelayer.fillColor = [UIColor clearColor].CGColor; // 闭环填充的颜色
    linelayer.path = path2.CGPath;
    linelayer.lineCap = kCALineCapSquare; // 边缘线的类型
    linelayer.lineWidth = 10.0; // 线条宽度
    linelayer.strokeStart = 0.0f;
    linelayer.strokeEnd = 1.0f;
    linelayer.lineCap = @"round";
    [self.view.layer addSublayer:linelayer];
    [gradient setMask:linelayer];
    
    [self.view.layer addSublayer:gradient];

    CAShapeLayer *backlayer = [CAShapeLayer layer];
    
    backlayer.frame = self.view.bounds; // 与showView的frame一致
    backlayer.strokeColor = [UIColor lightGrayColor].CGColor; // 边缘线的颜色
    backlayer.fillColor = [UIColor clearColor].CGColor; // 闭环填充的颜色
    backlayer.path = path.CGPath;
    
    backlayer.opaque = 0.35;
    
    backlayer.lineCap = kCALineCapSquare; // 边缘线的类型
    backlayer.lineWidth = 10.0; // 线条宽度
    backlayer.strokeStart = 0.0f;
    backlayer.strokeEnd = 1.0f;
    backlayer.lineCap = @"round";
    backlayer.transform = CATransform3DMakeRotation( M_PI_2, 0, 0, 1);
    [self.view.layer addSublayer:backlayer];

    
    
    shapelayer = [CAShapeLayer layer];
 // 从贝塞尔曲线获取到形状
    shapelayer.frame = self.view.bounds; // 与showView的frame一致
    shapelayer.strokeColor = [UIColor greenColor].CGColor; // 边缘线的颜色
    shapelayer.fillColor = [UIColor clearColor].CGColor; // 闭环填充的颜色
    shapelayer.path = path.CGPath;
    shapelayer.speed = 2;
    shapelayer.lineCap = kCALineCapSquare; // 边缘线的类型
    shapelayer.lineWidth = 10.0; // 线条宽度
    shapelayer.strokeStart = 0.0f;
    shapelayer.strokeEnd = 0.0f;
    shapelayer.lineCap = @"round";
    shapelayer.transform = CATransform3DMakeRotation( M_PI_2, 0, 0, 1);
    [self.view.layer addSublayer:shapelayer];

    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        shapelayer.strokeStart = 0.0f;
//        shapelayer.strokeEnd = 0.50f;
//    });
//    
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    
    gradientLayer.frame = self.view.bounds;
    
    gradientLayer.colors = @[(id)[[UIColor redColor] CGColor] ,
//                             (id)[UIColor yellowColor].CGColor,
                             (id)[UIColor greenColor].CGColor,
                             (id)[UIColor purpleColor].CGColor
                             ];
    //改变方向   但是还没看明白  具体怎么改变
    
//     The start and end points of the gradient when drawn into the layer's
//     coordinate space. The start point corresponds to the first gradient
//     stop, the end point to the last gradient stop. Both points are
//     defined in a unit coordinate space that is then mapped to the
//     layer's bounds rectangle when drawn. (I.e. [0,0] is the bottom-left
//     corner of the layer, [1,1] is the top-right corner.) The default values
//     are [.5,0] and [.5,1] respectively. Both are animatable.
//     
//     gradient 的开始点和结束点 拉伸layer的坐标空间。
//     起点对应于第一个倾斜点,终点到最后一个倾斜点。
//     这两个点定义在一个单元坐标空间,然后映射到层的边界矩形时。
//     (即[0,0]是layer的左下角，[1，1]是右上角)。
//     默认值分别是[5，0]和[5,1]。都是动画。
    
    
    [gradientLayer setStartPoint:CGPointMake(0, 0)];
    [gradientLayer setEndPoint:CGPointMake(1, 0)];
//
//     gradientLayer.locations = @[@0.1,@0.45,@0.6,@1];
    
    [gradientLayer setMask:shapelayer];
    
    [self.view.layer addSublayer:gradientLayer];
    

   
}
- (IBAction)changeTheFloat:(UISlider *)sender {
   
    NSLog(@"%f",self.view.frame.size.height*sender.value);
    
    UIColor* color = [self getPixelColorAtLocation:CGPointMake(self.view.frame.size.width*sender.value*0.99, 2) withImage:[self fullScreenshots]];
    
    sender.minimumTrackTintColor = color;
    //    if (sender.value<=0.33) {
//        sender.minimumTrackTintColor = [UIColor redColor];
//    }else if(sender.value<=0.66&&sender.value>0.33){
//          sender.minimumTrackTintColor = [UIColor greenColor];
//    }else{
//        sender.minimumTrackTintColor = [UIColor purpleColor];
//    }
    
    
    shapelayer.strokeEnd = sender.value;
    
    
    
}

-(UIImage *)fullScreenshots{
    
    UIWindow *screenWindow = [[UIApplication sharedApplication] keyWindow];
    UIGraphicsBeginImageContext(screenWindow.frame.size);//全屏截图，包括window
    
    [screenWindow.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    
    
    return viewImage;
    
}

- (UIColor*) getPixelColorAtLocation:(CGPoint)point withImage:(UIImage*) image {
    UIColor* color = nil;
    CGImageRef inImage = image.CGImage;
    // Create off screen bitmap context to draw the image into. Format ARGB is 4 bytes for each pixel: Alpa, Red, Green, Blue
    CGContextRef cgctx = [self createARGBBitmapContextFromImage:inImage];
    if (cgctx == NULL) { return nil;  }
    
    size_t w = CGImageGetWidth(inImage);
    size_t h = CGImageGetHeight(inImage);
    CGRect rect = {{0,0},{w,h}};
    
    // Draw the image to the bitmap context. Once we draw, the memory
    // allocated for the context for rendering will then contain the
    // raw image data in the specified color space.
    CGContextDrawImage(cgctx, rect, inImage);
    
    // Now we can get a pointer to the image data associated with the bitmap
    // context.
    unsigned char* data = CGBitmapContextGetData (cgctx);
    if (data != NULL) {
        //offset locates the pixel in the data from x,y.
        //4 for 4 bytes of data per pixel, w is width of one row of data.
        @try {
            int offset = 4*((w*round(point.y))+round(point.x));
//            NSLog(@"offset: %d", offset);
            int alpha =  data[offset];
            int red = data[offset+1];
            int green = data[offset+2];
            int blue = data[offset+3];
//            NSLog(@"offset: %i colors: RGB A %i %i %i  %i",offset,red,green,blue,alpha);
            color = [UIColor colorWithRed:(red/255.0f) green:(green/255.0f) blue:(blue/255.0f) alpha:(alpha/255.0f)];
        }
        @catch (NSException * e) {
            NSLog(@"%@",[e reason]);
        }
        @finally {
        }
        
    }
    
    return color;
}
- (CGContextRef) createARGBBitmapContextFromImage:(CGImageRef) inImage {
    
    CGContextRef    context = NULL;
    CGColorSpaceRef colorSpace;
    void *          bitmapData;
    int             bitmapByteCount;
    int             bitmapBytesPerRow;
    
    // Get image width, height. We'll use the entire image.
    size_t pixelsWide = CGImageGetWidth(inImage);
    size_t pixelsHigh = CGImageGetHeight(inImage);
    
    // Declare the number of bytes per row. Each pixel in the bitmap in this
    // example is represented by 4 bytes; 8 bits each of red, green, blue, and
    // alpha.
    bitmapBytesPerRow   = (pixelsWide * 4);
    bitmapByteCount     = (bitmapBytesPerRow * pixelsHigh);
    
    // Use the generic RGB color space.
    colorSpace = CGColorSpaceCreateDeviceRGB();
    
    if (colorSpace == NULL)
    {
        fprintf(stderr, "Error allocating color spacen");
        return NULL;
    }
    
    // Allocate memory for image data. This is the destination in memory
    // where any drawing to the bitmap context will be rendered.
    bitmapData = malloc( bitmapByteCount );
    if (bitmapData == NULL)
    {
        fprintf (stderr, "Memory not allocated!");
        CGColorSpaceRelease( colorSpace );
        return NULL;
    }
    
    // Create the bitmap context. We want pre-multiplied ARGB, 8-bits
    // per component. Regardless of what the source image format is
    // (CMYK, Grayscale, and so on) it will be converted over to the format
    // specified here by CGBitmapContextCreate.
    context = CGBitmapContextCreate (bitmapData,
                                     pixelsWide,
                                     pixelsHigh,
                                     8,      // bits per component
                                     bitmapBytesPerRow,
                                     colorSpace,
                                     kCGImageAlphaPremultipliedFirst);
    if (context == NULL)
    {
        free (bitmapData);
        fprintf (stderr, "Context not created!");
    }
    // Make sure and release colorspace before returning
    CGColorSpaceRelease( colorSpace );
    
    return context;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
