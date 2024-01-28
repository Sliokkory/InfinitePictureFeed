import UIKit

struct OAuthTokenResponseBody: Decodable {
    let accessToken: String
    let tokenType: String
    let scope: String
    let createdAt: Int
    
    enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case tokenType = "token_type"
        case scope
        case createdAt = "created_at"
    }
    
    init(accesToken: String, tokenType: String, scope: String, createdAt: Int) {
        self.accessToken = accesToken
        self.tokenType = tokenType
        self.scope = scope
        self.createdAt = createdAt
    }
}
