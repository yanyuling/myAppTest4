/*   统一定义主题颜色  新代码不许用其他颜色*/
#define PinkColor                    [UIColor colorWithHexColorString:@"e61c62"]
#define WhiteColor                   [UIColor colorWithHexColorString:@"ffffff"]
#define DarkGrayColor                [UIColor colorWithHexColorString:@"333333"]
#define GrayColor                    [UIColor colorWithHexColorString:@"999999"]
#define LightGrayColor               [UIColor colorWithHexColorString:@"c2c2c2"]
#define SkyBlueColor                 [UIColor colorWithHexColorString:@"2dbcff"]
#define RedColor                     [UIColor colorWithHexColorString:@"ff5200"]
#define OrangeColor                  [UIColor colorWithHexColorString:@"ff9b2f"]
#define YellowColor                  [UIColor colorWithHexColorString:@"ffc052"]
#define GreenColor                   [UIColor colorWithHexColorString:@"7cc6a0"]
#define LineColor                    [UIColor colorWithHexColorString:@"e5e5e5"]
#define BackGroundColor              [UIColor colorWithHexColorString:@"f2f2f2"]
#define NavigationColor              [UIColor colorWithHexColorString:@"f8f8f8"]
#define MainColor                    [UIColor colorWithHexColorString:@"242529"]

#define PriceColor                   [UIColor colorWithHexColorString:@"ff4a4b"]

#define Alpha(color)                 [color colorWithAlphaComponent:0.7]

//-----------导航条标题
#define NavFontSize                17.
#define NavFontColor               @"FFFFFF"
#define CommonCellBackgroundColor  [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1]

#pragma mark - 导航高度
#undef	APP_NAVIGATION_HEIGHT
#define APP_NAVIGATION_HEIGHT	     44.0f

#undef	APP_SEGMENT_BAR_HEIGHT
#define APP_SEGMENT_BAR_HEIGHT	     42.0f

#undef	APP_NAVIGATION_START_Y
#define APP_NAVIGATION_START_Y	     ( IS_IOS7_LATER ? 20.0 : 0.0)

#define TOP_BLANNER_HEIGHT  (IS_IOS7_LATER?64:44) //顶部Logo背景条的高度


#define ScreenWidth  ([UIScreen mainScreen].bounds.size.width)
#define ScreenHeight ([UIScreen mainScreen].bounds.size.height)

#pragma mark - 状态栏高度
#define StatusHeight                 20.0
#define NaviBarHeight                49.0
static const CGFloat kTabBarHeight = 45.0f;

#define CommonFilePath      ([ToolModel getLocalpath])

#define BackBtnImg          @"返回_黑"

#define HEIGHT(num)         ScreenHeight * num / 1334

#define WIDTH(num)          ScreenWidth * num / 750
