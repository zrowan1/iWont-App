//
//  User.swift
//  iWon't
//
//  Created by Rowan Deschaux on 25/11/2021.
//

import Foundation


public class User
{
    private var aantalPuntenGebruiker = 700
    private var aantalKeerGerooktVandaag = 12
    private var aantalKeerGerooktWeek = 40
    private var aantalKeerGerooktMaand = 160
    private var aantalkeerGerooktJaar = 400
    private var gebruikersNaam : String
    private var puntenScoreGebruiker = puntenScore.laag
    private var puntenScoreRoker = puntenScoreRoken.laag
    
    private var gerooktIederUur = [2, 6, 0, 4, 5, 6, 8, 1, 5, 10, 14, 10, 20, 3, 7, 9, 2, 6, 0, 0, 0, 0, 0, 0]
    
    private var gerooktIedereDag = [50, 78, 32, 124, 65, 67, 44]
    
    private var gerooktIedereWeek = [400, 569, 320, 732]
    
    private var gerooktIedereMaand = [2200, 3400, 1278, 832, 650, 234, 4001, 7543, 3542, 957, 5642, 2001]
    
    enum puntenScore
    {
        case hoog, gemiddeld, laag
    }
    
    enum puntenScoreRoken
    {
        case hoog, gemiddeld, laag
    }
    
    enum couponBedrijf: String, CaseIterable
    {
        case starbucks = "Starbucks"
        case apple = "Apple"
        case jbl = "JBL"
        case bufkes = "Bufkes"
        case subway = "Subway"
        case steam = "Steam"
        case nintendo = "Nintendo"
    }
    
    private var couponDictionary = [
        couponBedrijf.starbucks: "XYZ4-JK89-538K-POLS",
        couponBedrijf.apple: "TYQE-263L-PSND-56S5",
        couponBedrijf.jbl: "SEK2-PEN1-S69L-H0M4",
        couponBedrijf.bufkes: "420L-6BJ0-KSA8-LOPE",
        couponBedrijf.subway: "743K-3JV3-5VK4-V34J",
        couponBedrijf.steam: "3VNI-3WNV-ENVU-94NV",
        couponBedrijf.nintendo: "3JKN-3N4J-9CE8-KL3V"
    ]
    
    

    
    init(name: String)
    {
        self.gebruikersNaam = name
    }
    
    func getAantalPuntenGebruiker() -> Int
    {
        return aantalPuntenGebruiker
    }
    func getGebruikersNaam() -> String
    {
        return gebruikersNaam
    }
    func getPuntenScore() -> puntenScore
      {
        return puntenScoreGebruiker
    }
    func getAantalKeerGerooktVandaag() -> Int
    {
        return aantalKeerGerooktVandaag
    }
    func getCouponNaam(getal: Int) -> String
    {
        switch (getal)
        {
        case 0:
            return "Starbucks"
        case 1:
            return "Apple"
        case 2:
            return "JBL"
        case 3:
            return "Bufkes"
        case 4:
            return "Subway"
        case 5:
            return "Steam"
        case 6:
            return "Nintendo"
        default:
            return "Geen naam gevonden"
        }
    }
    
    func checkPuntenScore() -> puntenScore
    {
        switch aantalPuntenGebruiker
        {
        case 0...99:
            return puntenScore.laag
        
        case 100...499:
            return puntenScore.gemiddeld
        
        default:
            return puntenScore.hoog
        }

    }
    func checkGerooktInUur(uur: Int) -> Double
    {
        return Double(gerooktIederUur[uur])
    }
    
    func checkGerooktInWeek(dag: Int) -> Double
    {
        return Double(gerooktIedereDag[dag])
    }
    
    func checkGerooktInMaand(week: Int) -> Double
    {
        return Double(gerooktIedereWeek[week])
    }
    
    func checkGerooktInJaar(maand: Int) -> Double
    {
        return Double(gerooktIedereMaand[maand])
    }
        
    
    
    
    
    
    
    
    
    
    
    
    
    
}



public var rowan = User(name: "Rowan")
