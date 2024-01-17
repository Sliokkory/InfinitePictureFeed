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
        username.translatesAutoresizingMaskIntoConstraints = false
        username.textAlignment = .left
        username.text = "Екатерина Новикова"
        username.textColor = .white
        username.font = UIFont.boldSystemFont(ofSize: 23)
        return username
    }()
    
    private let userLoginName: UILabel = {
        let userLoginName = UILabel()
        userLoginName.translatesAutoresizingMaskIntoConstraints = false
        userLoginName.textAlignment = .left
        userLoginName.text = "@ekaterina_nov"
        userLoginName.textColor = UIColor(rgb: 0xAEAFB4)
        userLoginName.font = UIFont.systemFont(ofSize: 13)
        return userLoginName
    }()
    
    private let userMessage: UILabel = {
        let userMessage = UILabel()
        userMessage.translatesAutoresizingMaskIntoConstraints = false
        userMessage.textAlignment = .left
        userMessage.text = "Hello, world!"
        userMessage.textColor = .white
        userMessage.font = UIFont.systemFont(ofSize: 13)
        return userMessage
    }()
    
    private let exitButton:UIButton = {
        let exitButton = UIButton(type: .custom)
        let exitImage = UIImage(named: "exit")
        exitButton.translatesAutoresizingMaskIntoConstraints = false
        exitButton.setTitle("", for: .normal)
        exitButton.setImage(exitImage, for: .normal)
        return exitButton
    }()
    
    private func setupViews() {
        let views = [profileImage, userName, userLoginName, userMessage, exitButton]
        views.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
    }
    
    private func setupConstraint() {
        profileImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 76).isActive = true
        profileImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true

        userName.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 8).isActive = true
        userName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true

        userLoginName.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 8).isActive = true
        userLoginName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true

        userMessage.topAnchor.constraint(equalTo: userLoginName.bottomAnchor, constant: 8).isActive = true
        userMessage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        
        exitButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 89).isActive = true
        exitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
    }
}

