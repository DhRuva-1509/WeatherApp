//
//  ContentView.swift
//  WeatherApp
//
//  Created by Dhruva Patil on 2024-12-27.
//

import SwiftUI

struct ContentView: View {
    @State private var isDarkMode = false
    var body: some View {
        ZStack {
            BackgroudView(isDarkMode : $isDarkMode)
            VStack{
                
                CityTextView(cityName: "Markham, ON")
                MainWeatherStatusView(imageName: "snowflake", temperature: 1)
                
                HStack (spacing: 30){
        
                    WeatherDayView(dayOfWeek: "Sat", imageName: "cloud.fill", temperature:  0);
                    WeatherDayView(dayOfWeek: "Sun", imageName: "cloud.fill", temperature: -1);
                    WeatherDayView(dayOfWeek: "Mon", imageName: "snowflake" , temperature: -2);
                    WeatherDayView(dayOfWeek: "Tue", imageName: "snowflake" , temperature: -3);
                    WeatherDayView(dayOfWeek: "Wed", imageName: "cloud.fill", temperature:  0)
                    
                     
                }
                Spacer()
                
                Button(action: {
                    isDarkMode.toggle()
                }, label: {
                    WeatherButtonText(buttonName: "Add Day Time",textColor:.white,backgroundColor: .blue)
                })
                
                Spacer()
            }
        }
    }
}
    struct ContentView_Previews: PreviewProvider{
        static var previews: some View{
            ContentView()
        }
    }

struct WeatherDayView: View {
    var dayOfWeek : String;
    var imageName : String;
    var temperature : Int;
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName )
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40 , height: 40)
            
            Text("\(temperature )°")
                .font(.system(size: 28 , weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroudView : View {
    @Binding var isDarkMode : Bool;
    var body: some View {
        LinearGradient(colors: [isDarkMode ? .black : .blue, isDarkMode ? .gray : Color("lightBlue")],
                       startPoint: .topLeading,
                       endPoint: .bottomLeading)
        .ignoresSafeArea(.all)
    }
}

struct CityTextView : View {
    var cityName : String;
    var body: some View{
        Text(cityName)
            .font(.system(size:32 ,weight: .medium, design: .default ))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView : View {
    var imageName : String;
    var temperature : Int;
    var body: some View {
        VStack (spacing : 8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180 , height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70 , weight: .medium ))
                .foregroundColor(.white)
        }
        .padding(.bottom , 40 )
        
    }
}
  
