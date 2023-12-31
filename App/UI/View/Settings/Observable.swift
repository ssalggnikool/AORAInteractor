//
//  Customization.swift
//  rambutan
//
//  Created by samara on 6/16/23.
//

import SwiftUI
import MachO

class Settings: ObservableObject {
    @AppStorage("Generator") var textFieldText = "0x3bc2b1fbd8d0f821"
    
    @AppStorage("isRestoreRootfsEnabled") var isRestoreRootfsEnabled = false
    @AppStorage("isTweaksEnabled") var isTweaksEnabled = true
    @AppStorage("isLogsEnabled") var isLogsEnabled = false
    @AppStorage("isShareLogsEnabled") var isShareLogsEnabled = false
    @AppStorage("isIDEnabled") var isIDEnabled = false
    
    @AppStorage("selectedTheme") var selectedTheme = "Aurora"
    @AppStorage("selectedImage") var selectedThemeImage = "milad-fakurian-u8Jn2rzYIps-unsplash"
    
    static let shared = Settings()
}


struct DeviceInfo {
    static let current = DeviceInfo()

    init() {
        self.machineName = info.getModelName()
        self.modelArch = info.getArchitecture()
        self.platformName = info.getDevicePlatform()
        self.platformVer = info.getOSVersion()
    }

    let machineName: String
    let modelArch: String
    let platformName: String
    let platformVer: String
}
