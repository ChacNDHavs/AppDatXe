//
//  UserDefaultsExtension.swift
//  DerivativeIOS
//
//  Created by Dao Hai on 10/16/18.
//  Copyright © 2018 Ngo Dang Chac. All rights reserved.
//

import Foundation

extension UserDefaults {
    func contains(key: String) -> Bool {
        return UserDefaults.standard.object(forKey: key) != nil
    }
}
