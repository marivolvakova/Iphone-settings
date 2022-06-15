//
//  CustomCell.swift
//  IphoneSettings
//
//  Created by Мария Вольвакова on 05.06.2022.
//

import UIKit

class NotificationCell: UITableViewCell {
    static let identifier = "NotificationCell"
    
    var imageIcon: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .red
        image.tintColor = .white
        return image
    }()
    
     var lable: UILabel = {
         let lable = UILabel()
        return lable
    }()

    var notificationImage: UIImageView = {
        let image = UIImageView()
        image.image = Images.notificationImage
        image.tintColor = .red
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false

        return image
    }()

    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.alignment = .center
        return stackView
    }()
    
     func setUpView() {
         contentView.addSubview(imageIcon)
         
         imageIcon.translatesAutoresizingMaskIntoConstraints = false
         NSLayoutConstraint.activate([
         imageIcon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
         imageIcon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
         ])
         
         contentView.addSubview(lable)
        
         lable.translatesAutoresizingMaskIntoConstraints = false
         NSLayoutConstraint.activate([
         lable.leadingAnchor.constraint(equalTo: imageIcon.trailingAnchor, constant: 17),
         lable.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
         ])
         
         contentView.addSubview(notificationImage)
         notificationImage.translatesAutoresizingMaskIntoConstraints = false
         
         NSLayoutConstraint.activate([
         notificationImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
         notificationImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
         ])
         
     }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpView()
        accessoryType = .disclosureIndicator
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
