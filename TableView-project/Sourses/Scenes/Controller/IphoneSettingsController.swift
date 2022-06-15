//
//  ViewController.swift
//  TableView-project
//
//  Created by Мария Вольвакова on 15.06.2022.
//

import UIKit

class IphoneSettingsController: UIViewController {

    let tableView = UITableView(frame: .zero, style: .grouped)
    let cellContent = ContentArray()
    var model = [[ContentCell]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        configureTableView()
    }
    
    // MARK: - Configurations for tableView
    func configureTableView() {
        tableView.backgroundColor = UIColor(named: "separators")
        tableView.rowHeight = 40
        
        // Custom cells register
        tableView.register(NotificationCell.self, forCellReuseIdentifier: NotificationCell.identifier)
        tableView.register(SwitchCell.self, forCellReuseIdentifier: SwitchCell.identifier)
        tableView.register(ArrowCell.self, forCellReuseIdentifier: ArrowCell.identifier)

        
        model = cellContent.dataArray
        title = "Настройки"
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - Setup tableView layout
    func setupLayout() {
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

    // MARK: - Extension: tableView methods
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    

    // Задаем действие при нажатии на ячейку: выделение убирается, выводится название ячейки в консоль
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Нажата ячейка \(model[indexPath.section][indexPath.row].title)")
    }
    
    // Задаем количество секций
    func numberOfSections(in tableView: UITableView) -> Int {
        return model.count
    }
    
    // Задаем количество строк в каждой секции
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model[section].count
    }
    
    // Задаем ячейки и заполняем контентом
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let info = model[indexPath.section][indexPath.row]

        switch info.type {
            
        case .switchCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: SwitchCell.identifier, for: indexPath) as! SwitchCell
            cell.imageView?.image = info.image
            cell.textLabel?.text = info.title
            return cell
            
        case .secTextCell:
            let cell = UITableViewCell(style: .value1, reuseIdentifier: "Value1")
            cell.detailTextLabel?.text = info.secondText
            cell.accessoryType = .disclosureIndicator
            cell.imageView?.image = info.image
            cell.textLabel?.text = info.title
            return cell
        case .arrowCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: ArrowCell.identifier, for: indexPath) as! ArrowCell
            cell.imageView?.image = info.image
            cell.textLabel?.text = info.title
            return cell
        case .notificationCell:
           let cell = tableView.dequeueReusableCell(withIdentifier: NotificationCell.identifier, for: indexPath) as! NotificationCell
            cell.imageView?.image = info.image
            cell.textLabel?.text = info.title
            return cell
        }
    }
}

