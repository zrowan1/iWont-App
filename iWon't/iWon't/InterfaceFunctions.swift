//
//  InterfaceFunctions.swift
//  iWon't
//
//  Created by Rowan Deschaux on 25/11/2021.
//

import Foundation
import SwiftUI
import SwiftUICharts
import Charts


var backgroundColor = Color(red: 83/255, green: 84/255, blue: 83/255)
var puntenKleur = Color(red: 0/255, green: 0/255, blue: 0/255)
var voortgangTekst = "Dat kan beter!"



func kiesPuntenKleur() -> Color
{
 //   rowan.checkPuntenScore()
    if rowan.checkPuntenScore() == User.puntenScore.laag
    {
        puntenKleur = Color(red: 98/255, green: 1/255, blue: 1/255)
        return puntenKleur
    }
    else if rowan.checkPuntenScore() == User.puntenScore.hoog
    {
        puntenKleur = Color(red: 0/255, green: 255/255, blue: 0/255)
        return puntenKleur
    }
    else
    {
        puntenKleur = Color(red: 0/255, green: 0/255, blue: 0/255)
        return puntenKleur
    }
}

func switchColorMode()
{
    if backgroundColor == Color.white
    {
        backgroundColor = Color(red: 83/255, green: 84/255, blue: 83/255)
    }
    else
    {
        backgroundColor = Color.white
    }
    
}




func dataVandaagBerekenen() -> LineChartData
{
    
    var dataPunten = [LineChartDataPoint] (repeating: LineChartDataPoint(value: 0) ,count: 24)

    for i in 0...23
    {
        dataPunten[i] = LineChartDataPoint(value: rowan.checkGerooktInUur(uur: i))
    }
    
    let data = LineDataSet(dataPoints: dataPunten,
                               
                           legendTitle: "Keer Gerookt Dat Uur",
                           pointStyle: PointStyle(),
                           style: LineStyle(lineColour: ColourStyle(colour: .red), lineType: .line))
                           
    let metadata   = ChartMetadata(title: "Hoe Vaak Gerookt", subtitle: "In Een Dag")
                           
    let gridStyle  = GridStyle(numberOfLines: 7,
                               lineColour   : Color(.lightGray).opacity(0.5),
                               lineWidth    : 1,
                               dash         : [8],
                               dashPhase    : 0)
                           
    let chartStyle = LineChartStyle(infoBoxPlacement    : .infoBox(isStatic: false),
                                    infoBoxBorderColour : Color.primary,
                                    infoBoxBorderStyle  : StrokeStyle(lineWidth: 1),
                                                           
                                    markerType          : .vertical(attachment: .line(dot: .style(DotStyle()))),
                                                           
                                    xAxisGridStyle      : gridStyle,
                                    xAxisLabelPosition  : .bottom,
                                    xAxisLabelColour    : Color.primary,
                                    xAxisLabelsFrom     : .dataPoint(rotation: .degrees(0)),
                                                           
                                    yAxisGridStyle      : gridStyle,
                                                           yAxisLabelPosition  : .leading,
                                                           yAxisLabelColour    : Color.primary,
                                                           yAxisNumberOfLabels : 5,
                                                           
                                                           baseline            : .minimumWithMaximum(of: 0),
                                                           topLine             : .maximum(of: 50),
                                                           
                                                           globalAnimation     : .easeIn(duration: 1))
        
    return LineChartData(dataSets: data,
                         metadata: metadata,
                         chartStyle: chartStyle)
        
}

func dataWeekBerekenen() -> LineChartData
{
    var dataPunten = [LineChartDataPoint] (repeating: LineChartDataPoint(value: 0), count: 7)
    
    for i in 0...6
    {
        dataPunten[i] = LineChartDataPoint(value: rowan.checkGerooktInWeek(dag: i))
    }
    
    let data = LineDataSet(dataPoints: dataPunten,
                               
                           legendTitle: "Keer Gerookt Deze Dag",
                           pointStyle: PointStyle(),
                           style: LineStyle(lineColour: ColourStyle(colour: .red), lineType: .line))
                           
    let metadata   = ChartMetadata(title: "Hoe Vaak Gerookt", subtitle: "In Een Week")
                           
    let gridStyle  = GridStyle(numberOfLines: 7,
                               lineColour   : Color(.lightGray).opacity(0.5),
                               lineWidth    : 1,
                               dash         : [8],
                               dashPhase    : 0)
                           
    let chartStyle = LineChartStyle(infoBoxPlacement    : .infoBox(isStatic: false),
                                    infoBoxBorderColour : Color.primary,
                                    infoBoxBorderStyle  : StrokeStyle(lineWidth: 1),
                                                           
                                    markerType          : .vertical(attachment: .line(dot: .style(DotStyle()))),
                                                           
                                    xAxisGridStyle      : gridStyle,
                                    xAxisLabelPosition  : .bottom,
                                    xAxisLabelColour    : Color.primary,
                                    xAxisLabelsFrom     : .dataPoint(rotation: .degrees(0)),
                                                           
                                    yAxisGridStyle      : gridStyle,
                                                           yAxisLabelPosition  : .leading,
                                                           yAxisLabelColour    : Color.primary,
                                                           yAxisNumberOfLabels : 5,
                                                           
                                                           baseline            : .minimumWithMaximum(of: 0),
                                                           topLine             : .maximum(of: 200),
                                                           
                                                           globalAnimation     : .easeIn(duration: 1))
        
    return LineChartData(dataSets: data,
                         metadata: metadata,
                         chartStyle: chartStyle)
    
    
}

func dataMaandBerekenen() -> LineChartData
{
    var dataPunten = [LineChartDataPoint] (repeating: LineChartDataPoint(value: 0), count: 4)
    
    for i in 0...3
    {
        dataPunten[i] = LineChartDataPoint(value: rowan.checkGerooktInMaand(week: i))
    }
    
    let data = LineDataSet(dataPoints: dataPunten,
                               
                           legendTitle: "Keer Gerookt Deze Week",
                           pointStyle: PointStyle(),
                           style: LineStyle(lineColour: ColourStyle(colour: .red), lineType: .line))
                           
    let metadata   = ChartMetadata(title: "Hoe Vaak Gerookt", subtitle: "In Een Maand")
                           
    let gridStyle  = GridStyle(numberOfLines: 7,
                               lineColour   : Color(.lightGray).opacity(0.5),
                               lineWidth    : 1,
                               dash         : [8],
                               dashPhase    : 0)
                           
    let chartStyle = LineChartStyle(infoBoxPlacement    : .infoBox(isStatic: false),
                                    infoBoxBorderColour : Color.primary,
                                    infoBoxBorderStyle  : StrokeStyle(lineWidth: 1),
                                                           
                                    markerType          : .vertical(attachment: .line(dot: .style(DotStyle()))),
                                                           
                                    xAxisGridStyle      : gridStyle,
                                    xAxisLabelPosition  : .bottom,
                                    xAxisLabelColour    : Color.primary,
                                    xAxisLabelsFrom     : .dataPoint(rotation: .degrees(0)),
                                                           
                                    yAxisGridStyle      : gridStyle,
                                                           yAxisLabelPosition  : .leading,
                                                           yAxisLabelColour    : Color.primary,
                                                           yAxisNumberOfLabels : 5,
                                                           
                                                           baseline            : .minimumWithMaximum(of: 0),
                                                           topLine             : .maximum(of: 1000),
                                                           
                                                           globalAnimation     : .easeIn(duration: 1))
        
    return LineChartData(dataSets: data,
                         metadata: metadata,
                         chartStyle: chartStyle)

}
func dataJaarBerekenen() -> LineChartData
{
    var dataPunten = [LineChartDataPoint] (repeating: LineChartDataPoint(value: 0), count: 12)
    
    for i in 0...11
    {
        dataPunten[i] = LineChartDataPoint(value: rowan.checkGerooktInJaar(maand: i))
    }
    
    let data = LineDataSet(dataPoints: dataPunten,
                               
                           legendTitle: "Keer Gerookt Deze Maand",
                           pointStyle: PointStyle(),
                           style: LineStyle(lineColour: ColourStyle(colour: .red), lineType: .line))
                           
    let metadata   = ChartMetadata(title: "Hoe Vaak Gerookt", subtitle: "In Een Jaar")
                           
    let gridStyle  = GridStyle(numberOfLines: 7,
                               lineColour   : Color(.lightGray).opacity(0.5),
                               lineWidth    : 1,
                               dash         : [8],
                               dashPhase    : 0)
                           
    let chartStyle = LineChartStyle(infoBoxPlacement    : .infoBox(isStatic: false),
                                    infoBoxBorderColour : Color.primary,
                                    infoBoxBorderStyle  : StrokeStyle(lineWidth: 1),
                                                           
                                    markerType          : .vertical(attachment: .line(dot: .style(DotStyle()))),
                                                           
                                    xAxisGridStyle      : gridStyle,
                                    xAxisLabelPosition  : .bottom,
                                    xAxisLabelColour    : Color.primary,
                                    xAxisLabelsFrom     : .dataPoint(rotation: .degrees(0)),
                                                           
                                    yAxisGridStyle      : gridStyle,
                                                           yAxisLabelPosition  : .leading,
                                                           yAxisLabelColour    : Color.primary,
                                                           yAxisNumberOfLabels : 5,
                                                           
                                                           baseline            : .minimumWithMaximum(of: 0),
                                                           topLine             : .maximum(of: 10000),
                                                           
                                                           globalAnimation     : .easeIn(duration: 1))
        
    return LineChartData(dataSets: data,
                         metadata: metadata,
                         chartStyle: chartStyle)
    
}
