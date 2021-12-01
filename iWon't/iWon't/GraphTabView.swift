//
//  GraphTabView.swift
//  iWon't
//
//  Created by Rowan Deschaux on 29/11/2021.
//

import SwiftUI
import SwiftUICharts

enum Tab
{
    case dag, week, maand, jaar
}

struct GraphTabView: View {
    
    
    
    @State private var selectedTab: Tab = Tab.dag
    
    var body: some View {
        ZStack
        {
            
            backgroundColor.ignoresSafeArea()
            
            VStack
            {

            
                Picker("Tijd", selection: $selectedTab)
                {
                    Text("Vandaag").tag(Tab.dag)
                    Text("Deze Week").tag(Tab.week)
                    Text("Vier Weken").tag(Tab.maand)
                    Text("Dit Jaar").tag(Tab.jaar)
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 350)
                .padding(.top, 30)
                Spacer()
                switch selectedTab
                {
                case Tab.dag:
                    LineChartViewVandaag()
                    
                case Tab.week:
                    LineChartViewWeek()
                    
                case Tab.maand:
                    LineChartViewMaand()
                    
                case Tab.jaar:
                    LineChartViewJaar()
                    
                }
            }

        }
        
        
    }
}

struct LineChartViewVandaag: View {
    
    let data : LineChartData = dataVandaagBerekenen()
    
    var body: some View {

        VStack
        {
            LineChart(chartData: data)
                .touchOverlay(chartData: data)
                .pointMarkers(chartData: data)
                .yAxisGrid(chartData: data)
                .yAxisLabels(chartData: data)
                .infoBox(chartData: data)
                .headerBox(chartData: data)
                .id(data.id)
                .frame(minWidth: 150, maxWidth: 900, minHeight: 150, idealHeight: 250, maxHeight: 800, alignment: .center)
                .padding(.trailing)
                

            
        }

        
    }
        

}

struct LineChartViewWeek: View {
    
    let data : LineChartData = dataWeekBerekenen()
    
    var body: some View {
    
        VStack
        {
            LineChart(chartData: data)
                .touchOverlay(chartData: data)
                .pointMarkers(chartData: data)
                .yAxisGrid(chartData: data)
                .yAxisLabels(chartData: data)
                .infoBox(chartData: data)
                .headerBox(chartData: data)
                .id(data.id)
                .frame(minWidth: 150, maxWidth: 900, minHeight: 150, idealHeight: 250, maxHeight: 800, alignment: .center)
                .padding(.trailing)

        }

    }
}

struct LineChartViewMaand: View {
    
    let data: LineChartData = dataMaandBerekenen()

    
    var body: some View {
        
        VStack
        {
            LineChart(chartData: data)
                .touchOverlay(chartData: data)
                .pointMarkers(chartData: data)
                .yAxisGrid(chartData: data)
                .yAxisLabels(chartData: data)
                .infoBox(chartData: data)
                .headerBox(chartData: data)
                .id(data.id)
                .frame(minWidth: 150, maxWidth: 900, minHeight: 150, idealHeight: 250, maxHeight: 800, alignment: .center)
                .padding(.trailing)
        }
        
    }
}

struct LineChartViewJaar: View {
    
    let data: LineChartData = dataJaarBerekenen()
    
    var body: some View {
        
        VStack
        {
            LineChart(chartData: data)
                .touchOverlay(chartData: data)
                .pointMarkers(chartData: data)
                .yAxisGrid(chartData: data)
                .yAxisLabels(chartData: data)
                .infoBox(chartData: data)
                .headerBox(chartData: data)
                .id(data.id)
                .frame(minWidth: 150, maxWidth: 900, minHeight: 150, idealHeight: 250, maxHeight: 800, alignment: .center)
                .padding(.trailing)

        }
    }
}

struct GraphTabView_Previews: PreviewProvider {
    static var previews: some View {
        GraphTabView()
    }
}
