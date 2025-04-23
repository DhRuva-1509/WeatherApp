//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Dhruva Patil on 2024-12-28.
//

import SwiftUI

struct WeatherButtonText : View{
    var buttonName : String;
    var textColor : Color;
    var backgroundColor : Color;
    var body: some View{
        Text(buttonName)
            .frame(width: 280 , height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor )
            .font(.system(size: 20 , weight: .bold , design: .default))
            .cornerRadius(10)
    }
}
