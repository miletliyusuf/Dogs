//
//  Dogs.swift
//  Dogs
//
//  Created by Yusuf Miletli on 8.02.2022.
//

// Build libraries for distrubition setted to YES. For the ABI stability. Which means different swift versions supports.
// Mach O type is Dynamic Library. Means => Dynamic -> Compile Time / Static -> Run Time.

import Foundation

public final class DogsInFarm {

    public enum Types {

        case germanShepherd
        case labrador
        case golden
        case husky
    }

    public var all: [Types] = [.germanShepherd, .labrador, .golden, .husky]

    public func speak() -> String {

        return "BARK! BARK!"
    }

    private func isSleeping() -> Bool {

        return false
    }
}
