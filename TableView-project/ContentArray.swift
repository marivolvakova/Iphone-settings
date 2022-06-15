//
//  ContentArray.swift
//  IphoneSettings
//
//  Created by Мария Вольвакова on 04.06.2022.
//

import UIKit

struct ContentCell {
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

class ContentArray {
    var dataArray: [[ContentCell]] = {
        [ [ContentCell(title: "Авиарежим",                 image: Images.plane,     type: .switchCell,          secondText: nil),
           ContentCell(title: "Wi-Fi",                     image: Images.wifi,      type: .secTextCell,         secondText: "Не подключено"),
           ContentCell(title: "Bluetooth",                 image: Images.key,       type: .secTextCell,         secondText: "Вкл."),
           ContentCell(title: "Сотовая связь",             image: Images.antenna,   type: .arrowCell,           secondText: nil),
           ContentCell(title: "Режим модема",              image: Images.hotspot,   type: .arrowCell,           secondText: nil),
           ContentCell(title: "VPN",                       image: Images.square,    type: .switchCell,          secondText: nil)
          ],
          [ContentCell(title: "Уведомления",               image: Images.note,      type: .arrowCell,           secondText: nil),
           ContentCell(title: "Звуки, тактильные сигналы", image: Images.speaker,   type: .arrowCell,           secondText: nil),
           ContentCell(title: "Не беспокоить",             image: Images.moon,      type: .arrowCell,           secondText: nil),
           ContentCell(title: "Экранное время",            image: Images.hourglass, type: .arrowCell,           secondText: nil)
          ],
          
          [ContentCell(title: "Основные",                  image: Images.gear,      type: .notificationCell,    secondText: nil),
           ContentCell(title: "Пункт управления",          image: Images.toggle,    type: .arrowCell,           secondText: nil),
           ContentCell(title: "Экран и яркость",           image: Images.textformat,type: .arrowCell,           secondText: nil),
           ContentCell(title: "Экран «Домой»",             image: Images.apps,      type: .arrowCell,           secondText: nil),
           ContentCell(title: "Универсальный доступ",      image: Images.figure,    type: .arrowCell,           secondText: nil)
          ]
        ]
    }()
}
