# ColorfulWoodSystem
获取iPhone设备型号、系统版本、设备名称、app版本、UUID等

使用cocoapod进行下载：pod 'ColorfulWoodSystem'

示例：
#import <ColorfulWoodSystem.h>


@implementation ViewController

- (void)viewDidLoad {


    [super viewDidLoad];

    CWSystemInfo * info = [CWSystem interface_systemInfo];

    NSLog(@"%@\n%@\n%@\n%@\n%@\n",
          info.m_iphoneSystemVersion,
          info.m_iphoneUUID,
          info.m_iphoneType,
          info.m_iphoneName,
          info.m_appVersion);
          
}


@end
