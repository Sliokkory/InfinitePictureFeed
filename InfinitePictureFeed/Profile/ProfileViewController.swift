import UIKit

final class ProfileViewController: UIViewController {
    
    @IBOutlet weak var superview: UIView!
    private var subviews: [UIView] = []
    
    override func viewDidLoad() {
        profileImage()
        userName()
        userLoginName()
        userMessage()
        exitButton()
    }
    
    private func profileImage() {
        let image = UIImage(resource: .photo)
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        subviews.append(imageView)
        superview.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: superview.topAnchor, constant: 76),
            imageView.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: 16)
        ])
    }
    
    private func userName() {
        let username = UILabel()
        username.translatesAutoresizingMaskIntoConstraints = false
        username.textAlignment = .left
        username.text = "Екатерина Новикова"
        username.textColor = .white
        username.font = UIFont.boldSystemFont(ofSize: 23)
        subviews.append(username)
        superview.addSubview(username)
        NSLayoutConstraint.activate([
            username.topAnchor.constraint(equalTo: subviews[0].bottomAnchor, constant: 8),
            username.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: 16)
        ])
    }
    
    private func userLoginName() {
        let userLoginName = UILabel()
        userLoginName.translatesAutoresizingMaskIntoConstraints = false
        userLoginName.textAlignment = .left
        userLoginName.text = "@ekaterina_nov"
        userLoginName.textColor = UIColor(rgb: 0xAEAFB4)
        userLoginName.font = UIFont.systemFont(ofSize: 13)
        subviews.append(userLoginName)
        superview.addSubview(userLoginName)
        NSLayoutConstraint.activate([
            userLoginName.topAnchor.constraint(equalTo: subviews[1].bottomAnchor, constant: 8),
            userLoginName.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: 16)
        ])
    }
    
    private func userMessage() {
        let userMessage = UILabel()
        userMessage.translatesAutoresizingMaskIntoConstraints = false
        userMessage.textAlignment = .left
        userMessage.text = "Hello, world!"
        userMessage.textColor = .white
        userMessage.font = UIFont.systemFont(ofSize: 13)
        subviews.append(userMessage)
        superview.addSubview(userMessage)
        NSLayoutConstraint.activate([
            userMessage.topAnchor.constraint(equalTo: subviews[2].bottomAnchor, constant: 8),
            userMessage.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: 16)
        ])
    }
    
    private func exitButton() {
        let exitButton = UIButton(type: .custom)
        exitButton.translatesAutoresizingMaskIntoConstraints = false
        exitButton.setTitle("", for: .normal)
        exitButton.setImage(.exit, for: .normal)
        subviews.append(exitButton)
        superview.addSubview(exitButton)
        NSLayoutConstraint.activate([
            exitButton.topAnchor.constraint(equalTo: superview.topAnchor, constant: 89),
            exitButton.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -16)
        ])
    }
}

