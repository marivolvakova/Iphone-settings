//
//  IphoneSettings.swift
//  TableView-project
//
//  Created by Мария Вольвакова on 15.06.2022.
//

import UIKit


struct IphoneSettings {
    var title: String
    var image: UIImage
    var type: CellType
    var secondText: String?
}

enum CellType {
    case switchCell
    case arrowCell
    case secTextCell
    case notificationCell
}
