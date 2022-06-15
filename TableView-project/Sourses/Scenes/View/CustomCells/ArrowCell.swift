//
//  ArrowCell.swift
//  TableView-project
//
//  Created by Мария Вольвакова on 15.06.2022.
//

import UIKit

class ArrowCell: UITableViewCell {
    
    static let identifier = "ArrowCell"
    
    // MARK: - Configuration
    
    func configureView(with model: IphoneSettings) {
        imageIcon.image = model.image
        lable.text = model.title
        accessoryType = .disclosureIndicator
    }
    
    // MARK: - Views
    
    private lazy var imageIcon: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var lable: UILabel = {
        let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
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
        addSubview(imageIcon)
        addSubview(lable)
    }
    
    func setupLayout() {
        
        NSLayoutConstraint.activate([
            
            imageIcon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            imageIcon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imageIcon.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            
            lable.leadingAnchor.constraint(equalTo: imageIcon.trailingAnchor, constant: 17),
            lable.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
        ])
    }
}
