//
//  ContentArray.swift
//  IphoneSettings
//
//  Created by Мария Вольвакова on 04.06.2022.
//

import UIKit

class IphoneSettingsModel {
    func createModels() -> [[IphoneSettings]] {
        return [
            [IphoneSettings(title: "Авиарежим",                 image: UIImage(systemName: "airplane")!,                            type: .switchCell,          secondText: nil),
             IphoneSettings(title: "Wi-Fi",                     image: UIImage(systemName: "wifi")!,                                type: .secTextCell,         secondText: "Не подключено"),
             IphoneSettings(title: "Bluetooth",                 image: UIImage(systemName: "key")!,                                 type: .secTextCell,         secondText: "Вкл."),
             IphoneSettings(title: "Сотовая связь",             image: UIImage(systemName: "antenna.radiowaves.left.and.right")!,   type: .arrowCell,           secondText: nil),
             IphoneSettings(title: "Режим модема",              image: UIImage(systemName: "personalhotspot")!,                     type: .arrowCell,           secondText: nil),
             IphoneSettings(title: "VPN",                       image: UIImage(systemName: "v.square")!,                            type: .switchCell,          secondText: nil)
            ],
            [IphoneSettings(title: "Уведомления",               image: UIImage(systemName: "note")!,                                type: .arrowCell,           secondText: nil),
             IphoneSettings(title: "Звуки, тактильные сигналы", image: UIImage(systemName: "speaker.wave.3")!,                      type: .arrowCell,           secondText: nil),
             IphoneSettings(title: "Не беспокоить",             image: UIImage(systemName: "moon")!,                                type: .arrowCell,           secondText: nil),
             IphoneSettings(title: "Экранное время",            image: UIImage(systemName: "hourglass")!,                           type: .arrowCell,           secondText: nil)
            ],
            
            [IphoneSettings(title: "Основные",                  image:  UIImage(systemName: "gear")!,                               type: .notificationCell,    secondText: nil),
             IphoneSettings(title: "Пункт управления",          image: UIImage(systemName: "switch.2")!,                            type: .arrowCell,           secondText: nil),
             IphoneSettings(title: "Экран и яркость",           image: UIImage(systemName: "textformat.size")!,                     type: .arrowCell,           secondText: nil),
             IphoneSettings(title: "Экран «Домой»",             image: UIImage(systemName: "apps.ipad.landscape")!,                 type: .arrowCell,           secondText: nil),
             IphoneSettings(title: "Универсальный доступ",      image: UIImage(systemName: "figure.stand")!,                        type: .arrowCell,           secondText: nil)
            ]
        ]
    }
}
