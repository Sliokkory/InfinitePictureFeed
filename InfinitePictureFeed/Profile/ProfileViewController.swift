import UIKit

final class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        setupViews()
        setupConstraint()
    }
    
    private let profileImage: UIImageView = {
        let image = UIImage(named: "photo")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    private let userName: UILabel = {
        let username = UILabel()
        username.textAlignment = .left
        username.text = "Екатерина Новикова"
        username.textColor = .white
        username.font = UIFont.boldSystemFont(ofSize: 23)
        return username
    }()
    
    private let userLoginName: UILabel = {
        let userLoginName = UILabel()
        userLoginName.textAlignment = .left
        userLoginName.text = "@ekaterina_nov"
        userLoginName.textColor = UIColor(rgb: 0xAEAFB4)
        userLoginName.font = UIFont.systemFont(ofSize: 13)
        return userLoginName
    }()
    
    private let userMessage: UILabel = {
        let userMessage = UILabel()
        userMessage.textAlignment = .left
        userMessage.text = "Hello, world!"
        userMessage.textColor = .white
        userMessage.font = UIFont.systemFont(ofSize: 13)
        return userMessage
    }()
    
    private let exitButton:UIButton = {
        let exitButton = UIButton(type: .custom)
        let exitImage = UIImage(named: "exit")
        exitButton.setTitle("", for: .normal)
        exitButton.setImage(exitImage, for: .normal)
        return exitButton
    }()
    
    private func setupViews() {
        [profileImage, userName, userLoginName, userMessage, exitButton].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
    }
    
    private func setupConstraint() {
        NSLayoutConstraint.activate([
            profileImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 76),
            profileImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),

            userName.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 8),
            userName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),

            userLoginName.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 8),
            userLoginName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),

            userMessage.topAnchor.constraint(equalTo: userLoginName.bottomAnchor, constant: 8),
            userMessage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            exitButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 89),
            exitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }
}

