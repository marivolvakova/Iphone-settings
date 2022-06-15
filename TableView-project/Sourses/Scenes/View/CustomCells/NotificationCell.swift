//
//  NotificationCell.swift
//  TableView-project
//
//  Created by Мария Вольвакова on 15.06.2022.
//

import UIKit

class NotificationCell: UITableViewCell {
    
    static let identifier = "NotificationCell"
    
    // MARK: - Configuration
    
    func configureView(with model: IphoneSettings) {
        imageIcon.image = model.image
        lable.text = model.title
        accessoryType = .disclosureIndicator
    }
    
    // MARK: - Views
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.translatesAutoresizingMaskIntoConstraints = false
        view.spacing = 17
        return view
    }()
    
    private lazy var imageIcon: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var lable: UILabel = {
        let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.textAlignment = .left
        return lable
    }()
    
    lazy var notificationImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "1.circle.fill")!
        image.tintColor = .red
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    // MARK: - Initial
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        setupHierarchy()
        setupLayout()
    }
    
    func setupHierarchy() {
        addSubview(stackView)
        stackView.addArrangedSubview(imageIcon)
        stackView.addArrangedSubview(lable)
        addSubview(notificationImage)
    }
    
    func setupLayout() {
        
        NSLayoutConstraint.activate([
            
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            
            notificationImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            notificationImage.centerYAnchor.constraint(equalTo: stackView.centerYAnchor)
        ])
    }
}
