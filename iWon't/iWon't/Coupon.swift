//
//  Coupon.swift
//  iWon't
//
//  Created by Rowan Deschaux on 01/12/2021.
//

import Foundation

public class Coupon
{
    
    private var bedrijf : String
    private var code : String
    private var couponText : String

    
    
    init (bedrijsNaam : String, couponCode : String, text : String)
    {
        self.bedrijf = bedrijsNaam
        self.code = couponCode
        self.couponText = text
    }
    
    
    public func getBedrijfNaam() -> String
    {
        return bedrijf
    }
    public func getCode() -> String
    {
        return code
    }
    public func getCouponText() -> String
    {
        return couponText
    }
    
    
}
public var starbucks = Coupon(bedrijsNaam: "Starbucks", couponCode: "XYZ4-JK89-538K-POLS", text: "1 + 1 Kop koffie gratis bij je volgende bestelling!")

public var apple = Coupon(bedrijsNaam: "Apple", couponCode: "TYQE-263L-PSND-56S5", text: "10% korting op alle iPhone accesoires")

public var jbl = Coupon(bedrijsNaam: "JBL", couponCode: "SEK2-PEN1-S69L-H0M4", text: "10 euro cadeaubon uit te geven op de webshop")

public var bufkes = Coupon(bedrijsNaam: "Bufkes", couponCode: "420L-6BJ0-KSA8-LOPE", text: "Een gratis drankje bij bestelling van een broodje")

public var subway = Coupon(bedrijsNaam: "Subway", couponCode: "743K-3JV3-5VK4-V34J", text: "Krijg een 30cm sub voor de prijs van een 15cm sub")

public var steam = Coupon(bedrijsNaam: "Steam", couponCode: "3VNI-3WNV-ENVU-94NV", text: "5 euro Steam giftcard uit te geven in de Steam store")

public var nintendo = Coupon(bedrijsNaam: "Nintendo", couponCode: "3JKN-3N4J-9CE8-KL3V", text: "10% korting op de Nintendo e-shop")

public var couponArray = [starbucks, apple, jbl, bufkes, subway, steam, nintendo]
