//
//  ViewController.swift
//  TableView-project
//
//  Created by Мария Вольвакова on 15.06.2022.
//

import UIKit

class IphoneSettingsController: UIViewController {

    var model: IphoneSettingsModel?
       
       private var iphoneSettingsView: IphoneSettingsView? {
           guard isViewLoaded else { return nil }
           return view as? IphoneSettingsView
       }
       
       
       // MARK: - Lifecycle
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           title = "Настройки"
           
           view = IphoneSettingsView()
           model = IphoneSettingsModel()
           configureView()
       }
   }

       // MARK: - Configurations
   private extension IphoneSettingsController {
       func configureView() {
           guard let models = model?.createModels() else { return }
           iphoneSettingsView?.configureView(with: models)
       }
   }
