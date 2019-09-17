# UIBuildingWithoutStoryboard
Storyboardを使わずプロジェクトを作る

1. TARGET -> general -> deployment info -> Main Interfaceを空欄にする

2. mainstoryboardを消す（消さなくてもいい）

3. AppDelegateで初期画面を設定

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    
    window = UIWindow(frame: UIScreen.main.bounds)
    let NewsVC = NewsViewController()
    window?.rootViewController = UINavigationController(rootViewController: NewsVC)
    window?.makeKeyAndVisible()
    return true
  }

4. このまま起動すると真っ黒なので、ViewController.swiftにて背景色に白を追加する

override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.white
  }
