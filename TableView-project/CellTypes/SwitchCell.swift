//
//  toggleCell.swift
//  IphoneSettings
//
//  Created by Мария Вольвакова on 06.06.2022.
//

import UIKit

class SwitchCell: UITableViewCell {
    static let identifier = "ToggleCell"
    
    var imageIcon: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()
    
     var lable: UILabel = {
         let lable = UILabel()
         lable.textAlignment = .left
        return lable
    }()

    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.alignment = .center
        return stackView
    }()
    
     func setUpView() {
        contentView.addSubview(stackView)
         
         stackView.translatesAutoresizingMaskIntoConstraints = false
         imageIcon.translatesAutoresizingMaskIntoConstraints = false
         lable.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(imageIcon)
        stackView.addArrangedSubview(lable)
    
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
     }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpView()
        accessoryView = UISwitch()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
