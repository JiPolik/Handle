//
//  CircleGroupView.swift
//  Handle
//
//  Created by  Oleksandr Polishchuk on 27.03.2023.
//

import SwiftUI

struct CircleGroupView: View {
    // MARK: - PROPERTY
    
    @State var ShapeColor: Color
    @State var ShareOpacity: Double
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShareOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShareOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: ZSTACK
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.linear(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

// MARK: - PREVIEW
struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(ShapeColor: .white, ShareOpacity: 0.2)
        }
    }
}
