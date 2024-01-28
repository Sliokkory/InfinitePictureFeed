import Foundation

class OAuth2TokenStorage {

    private let tokenStorage = "oauth2_token"

    var token: String? {
        get {
            return UserDefaults.standard.string(forKey: tokenStorage)
        } set {
            UserDefaults.standard.set(newValue, forKey: tokenStorage)
        }
    }
}
