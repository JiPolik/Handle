//
//  OldData.swift
//  Handle
//
//  Created by  Oleksandr Polishchuk on 24.03.2023.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }

    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.green)
            .opacity(0.5)
    }
}

struct OldData: View {
//    private let imageUrl: String = "https://credo.academy/credo-academy@3x.png";
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //MARK - 1. Basic
        //                AsyncImage(url: URL(string: imageUrl))
        
        //MARK - 2. Scale
        //        AsyncImage(url: URL(string: imageUrl), scale: 2.5)
        
        //MARK - 3. Placeholder
        //        AsyncImage(url: URL(string: imageUrl)) {
        //            image in image
        //                .imageModifier()
        //        } placeholder: {
        //            Image(systemName: "photo.circle.fill")
        //                .iconModifier()
        //
        //        }
        //        .padding(40)
        
        //        MARK 4 - Phase
//        AsyncImage(url: URL(string: imageUrl)) { phase in
//            //Success: image successfully loaded
//            //Failure: image failed to load with an error
//            //Empty: no image is loaded
//            if  let image = phase.image {
//                image.imageModifier()
//            } else if phase.error != nil {
//                Image(systemName: "ant.circle.fill").imageModifier()
//            } else {
//                Image(systemName: "photo.circle.fill").imageModifier()
//            }
            
            //MARK - 5. Animation
//        AsyncImage(url: URL(string: imageUrl), transaction: Transaction(animation:
//                .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
//            switch phase {
//            case .success(let image):
//                image.imageModifier()
//                    .transition(.scale)
////                    .transition(.slide)
////                    .transition(.move(edge: .bottom))
//            case .empty:
//                Image(systemName: "photo.circle.fill").iconModifier()
//            case .failure(_):
//                Image(systemName: "ant.circle.fill").iconModifier()
//            @unknown default:
//                ProgressView()
//            }
//        }
//        .padding(40)
    }
}

struct OldData_Previews: PreviewProvider {
    static var previews: some View {
        OldData()
    }
}


// 1. background (static)
//                    Capsule()
//                        .fill(Color.blue.opacity(0.6))
//                        .padding(5)
//
//                    // 2. call-to-action (static)
//                        Image(systemName: "repeat.circle.fill")
//                            .font(.system(size: 24, weight: .bold))
//                            .foregroundColor(.white)
//                        Text("Restart")
//                            .font(.system(.title3, design: .rounded))
//                            .fontWeight(.bold)
//                            .foregroundColor(.white)

// 3. capsule (dynamic width)

// 4. circle (draggable)
