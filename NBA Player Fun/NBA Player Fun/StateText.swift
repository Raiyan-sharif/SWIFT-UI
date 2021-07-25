//
//  StateText.swift
//  NBA Player Fun
//
//  Created by raiyan sharif on 25/7/21.
//

import SwiftUI

struct StateText: View {
    var stateName:String
    var stateValue:String
    
    var body: some View {
        HStack{
            Text(stateName+":").font(.system(size: 45)).fontWeight(.bold).padding(.leading,30)
            Text(stateValue).font(.system(size: 45)).fontWeight(.light).padding(.trailing,30)
            Spacer()
        }
    }
}

struct StateText_Previews: PreviewProvider {
    static var previews: some View {
        StateText(stateName: "Age", stateValue: "32")
    }
}
