import Foundation

final class AppManager {
    static let shared = AppManager.init()
    
    private let _customQueue = DispatchQueue.init(label: "AppManager",
                                                   qos: .default,
                                                   attributes: .concurrent)
    
    private var _appId: String!
  
    private init() {
        print("Init called")
        _appId = ""
    }
    
    // Get & Set for _appId
    public var appId: String {
        get {
            return _customQueue.sync {
                _appId
            }
        }
        
        set(newAppId) {
            _customQueue.async(flags: .barrier) {
                self._appId = newAppId
            }
        }
    }
}
