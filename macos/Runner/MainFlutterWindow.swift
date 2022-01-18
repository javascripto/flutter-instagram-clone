import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController.init()
    self.contentViewController = flutterViewController
    
    let windowFrame = self.frame
    let width: CGFloat = 380
    let height: CGFloat = 720
    let x = windowFrame.origin.x - (width / 2)
    let y = windowFrame.origin.y
    let nsRect = NSRect(x:x, y:y, width: width, height:  height)
    self.setFrame(nsRect, display: true)

    RegisterGeneratedPlugins(registry: flutterViewController)

    super.awakeFromNib()
  }
}
