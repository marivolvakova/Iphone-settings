//
//  IphoneSettingsView.swift
//  TableView-project
//
//  Created by Мария Вольвакова on 15.06.2022.
//


import UIKit

class IphoneSettingsView: UIView {
    
    //MARK: - Configuration
    
    func configureView(with models: [[IphoneSettings]]) {
        self.models = models
    }
    
    
    //MARK: - Private properties
    
    private var models = [[IphoneSettings]]()
    
    
    //MARK: - Views
    
    private lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .grouped)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.rowHeight = 40
        
        
        view.dataSource = self
        view.delegate = self
        
        // Custom cells register
        view.register(NotificationCell.self, forCellReuseIdentifier: NotificationCell.identifier)
        view.register(SwitchCell.self, forCellReuseIdentifier: SwitchCell.identifier)
        view.register(ArrowCell.self, forCellReuseIdentifier: ArrowCell.identifier)
        view.register(SecondTextCell.self, forCellReuseIdentifier: SecondTextCell.identifier)
        
        return view
    }()
    
    
    
    //MARK: - Initial
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = UIColor(named: "separators")
        setupHierarchy()
        setupLayout()
        
    }
    
    //MARK: - Settings
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}


// MARK: - Action
extension IphoneSettingsView: UITableViewDelegate {
    
    // Задаем действие при нажатии на ячейку: выделение убирается, выводится название ячейки в консоль
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Нажата ячейка \(models[indexPath.section][indexPath.row].title)")
    }
}


// MARK: - UITableViewDataSource
extension IphoneSettingsView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let info = models[indexPath.section][indexPath.row]
        
        switch info.type {
            
        case .switchCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: SwitchCell.identifier, for: indexPath) as! SwitchCell
            cell.configureView(with: info)
            return cell
            
        case .secTextCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: SecondTextCell.identifier, for: indexPath) as! SecondTextCell
            cell.configureView(with: info)
            return cell
            
        case .arrowCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: ArrowCell.identifier, for: indexPath) as! ArrowCell
            cell.configureView(with: info)
            return cell
            
        case .notificationCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: NotificationCell.identifier, for: indexPath) as! NotificationCell
            cell.configureView(with: info)
            return cell
        }
    }
}
