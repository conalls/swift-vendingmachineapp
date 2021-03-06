//
//  StarBucksCoffee.swift
//  VendingMachine
//
//  Created by Mrlee on 2017. 12. 13..
//  Copyright © 2017년 Napster. All rights reserved.
//

import Foundation

class StarBucksCoffee: Coffee {
    private let reserve: Bool = false
    convenience init() {
        self.init(manufacturingDate: Date())
    }
    init(manufacturingDate: Date) {
        super.init(kind: "커피", caffeine: true, temperature: 98, brand: "스타벅스", volume: 700, price: 2000, name: "스타벅스아메리카노", manufacturingDate: manufacturingDate)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func encode(with aCoder: NSCoder) {
        super.encode(with: aCoder)
    }
    override var description: String {
        return "\(String(describing: type(of: self)))"
    }
    func isReserve() -> Bool {
        return reserve
    }
}
