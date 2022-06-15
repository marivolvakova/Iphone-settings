//
//  SecondTextCell.swift
//  TableView-project
//
//  Created by Мария Вольвакова on 15.06.2022.
//

import UIKit

class SecondTextCell: UITableViewCell {
    
    static let identifier = "SecondTextCell"
    
    // MARK: - Configuration
    
    func configureView(with model: IphoneSettings) {
        imageIcon.image = model.image
        lable.text = model.title
        secondLable.text = model.secondText
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
        return lable
    }()
    
    private lazy var secondLable: UILabel = {
        let lable = UILabel()
        lable.textColor = UIColor(named: "secTextColor")
        lable.textAlignment = .right
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
        addSubview(stackView)
        stackView.addArrangedSubview(imageIcon)
        stackView.addArrangedSubview(lable)
        addSubview(secondLable)
    }
    
    func setupLayout() {
        
        NSLayoutConstraint.activate([
            
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            
            secondLable.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            secondLable.centerYAnchor.constraint(equalTo: stackView.centerYAnchor)
        ])
    }
}
