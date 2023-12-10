//
//  ModelFile.swift
//  testGameApp
//
//  Created by apple on 26/11/2023.
//

import Foundation

struct keyAndValues {
    var id: Int
    var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

struct boxImages {
    var level: Int
    var blurImages: [keyAndValues]
    var correctImages: [keyAndValues]
}

struct boxImagesLevel {
    static var levels: [boxImages] = []

    static func levelSet() {
        levels = [
            boxImages(level: 1, blurImages: [keyAndValues(id: 1,name: "aa"),keyAndValues(id: 2,name: "aa1"),keyAndValues(id: 3,name: "aa2"),keyAndValues(id: 4,name: "aa3"),keyAndValues(id: 5,name: "aa4"),keyAndValues(id: 6,name: "aa5"),keyAndValues(id: 7,name: "aa6"),keyAndValues(id: 8,name: "aa7"),keyAndValues(id: 9,name: "aa8")], correctImages: [keyAndValues(id: 6,name: "aa5"),keyAndValues(id: 9,name: "aa7"),keyAndValues(id: 5,name: "aa4"),keyAndValues(id: 4,name: "aa3"),keyAndValues(id: 5,name: "aa4"),keyAndValues(id: 2,name: "aa1"),keyAndValues(id: 7,name: "aa6"),keyAndValues(id: 8,name: "aa7"),keyAndValues(id: 9,name: "aa8")]),
            
            // Add more levels as needed
            boxImages(level: 2, blurImages: [keyAndValues(id: 1,name: "aa"),keyAndValues(id: 2,name: "aa1"),keyAndValues(id: 3,name: "aa2"),keyAndValues(id: 4,name: "aa3"),keyAndValues(id: 5,name: "aa4"),keyAndValues(id: 6,name: "aa5"),keyAndValues(id: 7,name: "aa6"),keyAndValues(id: 8,name: "aa7"),keyAndValues(id: 9,name: "aa8")], correctImages: [keyAndValues(id: 2,name: "aa1"),keyAndValues(id: 3,name: "aa2"),keyAndValues(id: 1,name: "aa"),keyAndValues(id: 4,name: "aa3"),keyAndValues(id: 5,name: "aa4"),keyAndValues(id: 6,name: "aa5"),keyAndValues(id: 7,name: "aa6"),keyAndValues(id: 8,name: "aa7"),keyAndValues(id: 9,name: "aa8")])
        ]
    }

    static func getLevel(level: Int) -> boxImages? {
        if let l = levels.first(where: { levelItem in
            levelItem.level == level
        }) {
            return l
        }
        return nil
    }
}


//
//struct keyAndValues
//{
//    var id:Int
//    var name:String
//    init( id: Int, name: String) {
//        self.id = id
//        self.name = name
//    }
//}
//struct boxImages{
//    var level = 0
//    var blurImages:[keyAndValues] = []
//    var correctImages:[keyAndValues] = []
//}
//
//struct boxImagesLevel
//{
//    static var levels:[boxImages] = []
//    static func levelSet()
//    {
//        levels = [
//            boxImages(level: 1,blurImages: [keyAndValues(id: 1,name: "aa"),keyAndValues(id: 2,name: "aa"),keyAndValues(id: 3,name: "aa"),keyAndValues(id: 4,name: "aa"),keyAndValues(id: 5,name: "aa"),keyAndValues(id: 6,name: "aa"),keyAndValues(id: 7,name: "aa"),keyAndValues(id: 8,name: "aa"),keyAndValues(id: 9,name: "aa")],correctImages: [keyAndValues(id: 2,name: "aa"),keyAndValues(id: 4,name: "aa"),keyAndValues(id: 1,name: "aa"),keyAndValues(id: 3,name: "aa"),keyAndValues(id: 5,name: "aa"),keyAndValues(id: 9,name: "aa"),keyAndValues(id: 6,name: "aa"),keyAndValues(id: 7,name: "aa"),keyAndValues(id: 8,name: "aa")]),]
//            boxImages(level: 23,blurImages: [keyAndValues(id: 1,name: "level23bg1"),keyAndValues(id: 2,name: "level23bg2"),keyAndValues(id: 3,name: "level23bg3"),keyAndValues(id: 4,name: "level23bg4"),keyAndValues(id: 5,name: "level23bg5"),keyAndValues(id: 6,name: "level23bg6"),keyAndValues(id: 7,name: "level23bg7"),keyAndValues(id: 8,name: "level23bg8"),keyAndValues(id: 9,name: "level23bg9")],correctImages: [keyAndValues(id: 1,name: "level23part1"),keyAndValues(id: 2,name: "level23part2"),keyAndValues(id: 3,name: "level23part3"),keyAndValues(id: 4,name: "level23part4"),keyAndValues(id: 5,name: "level23part5"),keyAndValues(id: 6,name: "level23part6"),keyAndValues(id: 7,name: "level23part7"),keyAndValues(id: 8,name: "level23part8"),keyAndValues(id: 9,name: "level23part9")])]//,
//            boxImages(level: 24,blurImages: [keyAndValues(1,"girlbg1"),keyAndValues(2,"girlbg2"),keyAndValues(3,"girlbg3"),keyAndValues(4,"girlbg4"),keyAndValues(5,"girlbg5"),keyAndValues(6,"girlbg6"),keyAndValues(7,"girlbg7"),keyAndValues(8,"girlbg8"),keyAndValues(9,"girlbg9")],correctImages: [keyAndValues(2,"girlpart2"),keyAndValues(4,"girlpart4"),keyAndValues(1,"girlpart1"),keyAndValues(3,"girlpart3"),keyAndValues(5,"girlpart5"),keyAndValues(9,"girlpart9"),keyAndValues(6,"girlpart6"),keyAndValues(7,"girlpart7"),keyAndValues(8,"girlpart8")]),
//            boxImages(level: 25, blurImages: [keyAndValues(1,"level25bg1"),keyAndValues(2,"level25bg2"),keyAndValues(3,"level25bg3"),keyAndValues(4,"level25bg4"),keyAndValues(5,"level25bg5"),keyAndValues(6,"level25bg6"),keyAndValues(7,"level25bg7"),keyAndValues(8,"level25bg8"),keyAndValues(9,"level25bg9")],correctImages: [keyAndValues(1,"level25part1"),keyAndValues(2,"level25part2"),keyAndValues(3,"level25part3"),keyAndValues(4,"level25part4"),keyAndValues(5,"level25part5"),keyAndValues(6,"level25part6"),keyAndValues(7,"level25part7"),keyAndValues(8,"level25part8"),keyAndValues(9,"level25part9")]),
//
//            boxImages(level: 26,blurImages: [keyAndValues(1,"chickenbg1"),keyAndValues(2,"chickenbg2"),keyAndValues(3,"chickenbg3"),keyAndValues(4,"chickenbg4"),keyAndValues(5,"chickenbg5"),keyAndValues(6,"chickenbg6"),keyAndValues(7,"chickenbg7"),keyAndValues(8,"chickenbg8"),keyAndValues(9,"chickenbg9")],correctImages: [keyAndValues(1,"chickenpart1"),keyAndValues(2,"chickenpart2"),keyAndValues(3,"chickenpart3"),keyAndValues(4,"chickenpart4"),keyAndValues(5,"chickenpart5"),keyAndValues(6,"chickenpart6"),keyAndValues(7,"chickenpart7"),keyAndValues(8,"chickenpart8"),keyAndValues(9,"chickenpart9")]),
//
//
//
//            boxImages(level: 27,blurImages: [keyAndValues(1,"level23bg1"),keyAndValues(2,"level23bg2"),keyAndValues(3,"level23bg3"),keyAndValues(4,"level23bg4"),keyAndValues(5,"level23bg5"),keyAndValues(6,"level23bg6"),keyAndValues(7,"level23bg7"),keyAndValues(8,"level23bg8"),keyAndValues(9,"level23bg9")],correctImages: [keyAndValues(1,"level23part1"),keyAndValues(2,"level23part2"),keyAndValues(3,"level23part3"),keyAndValues(4,"level23part4"),keyAndValues(5,"level23part5"),keyAndValues(6,"level23part6"),keyAndValues(7,"level23part7"),keyAndValues(8,"level23part8"),keyAndValues(9,"level23part9")]),
//            boxImages(level: 28,blurImages: [keyAndValues(1,"level28bg1"),keyAndValues(2,"level28bg2"),keyAndValues(3,"level28bg3"),keyAndValues(4,"level28bg4"),keyAndValues(5,"level28bg5"),keyAndValues(6,"level28bg6"),keyAndValues(7,"level28bg7"),keyAndValues(8,"level28bg8"),keyAndValues(9,"level28bg9")],correctImages: [keyAndValues(1,"level28part1"),keyAndValues(2,"level28part2"),keyAndValues(3,"level28part3"),keyAndValues(4,"level28part4"),keyAndValues(5,"level28part5"),keyAndValues(6,"level28part6"),keyAndValues(7,"level28part7"),keyAndValues(8,"level28part8"),keyAndValues(9,"level28part9")]),
//            boxImages(level: 29,blurImages: [keyAndValues(1,"level29bg1"),keyAndValues(2,"level29bg2"),keyAndValues(3,"level29bg3"),keyAndValues(4,"level29bg4"),keyAndValues(5,"level29bg5"),keyAndValues(6,"level29bg6"),keyAndValues(7,"level29bg7"),keyAndValues(8,"level29bg8"),keyAndValues(9,"level29bg9")],correctImages: [keyAndValues(1,"level29part1"),keyAndValues(2,"level29part2"),keyAndValues(3,"level29part3"),keyAndValues(4,"level29part4"),keyAndValues(5,"level29part5"),keyAndValues(6,"level29part6"),keyAndValues(7,"level29part7"),keyAndValues(8,"level29part8"),keyAndValues(9,"level29part9")]),
//            boxImages(level: 30,blurImages: [keyAndValues(1,"level30bg1"),keyAndValues(2,"level30bg2"),keyAndValues(3,"level30bg3"),keyAndValues(4,"level30bg4"),keyAndValues(5,"level30bg5"),keyAndValues(6,"level30bg6"),keyAndValues(7,"level30bg7"),keyAndValues(8,"level30bg8"),keyAndValues(9,"level30bg9")],correctImages: [keyAndValues(1,"level30part1"),keyAndValues(2,"level30part2"),keyAndValues(3,"level30part3"),keyAndValues(4,"level30part4"),keyAndValues(5,"level30part5"),keyAndValues(6,"level30part6"),keyAndValues(7,"level30part7"),keyAndValues(8,"level30part8"),keyAndValues(9,"level30part9")]),
//            boxImages(level: 31,blurImages: [keyAndValues(1,"level31bg1"),keyAndValues(2,"level31bg2"),keyAndValues(3,"level31bg3"),keyAndValues(4,"level31bg4"),keyAndValues(5,"level31bg5"),keyAndValues(6,"level31bg6"),keyAndValues(7,"level31bg7"),keyAndValues(8,"level31bg8"),keyAndValues(9,"level31bg9")],correctImages: [keyAndValues(1,"level31part1"),keyAndValues(2,"level31part2"),keyAndValues(3,"level31part3"),keyAndValues(4,"level31part4"),keyAndValues(5,"level31part5"),keyAndValues(6,"level31part6"),keyAndValues(7,"level31part7"),keyAndValues(8,"level31part8"),keyAndValues(9,"level31part9")]),
//
//
//            boxImages(level: 32,blurImages: [keyAndValues(1,"level23bg1"),keyAndValues(2,"level23bg2"),keyAndValues(3,"level23bg3"),keyAndValues(4,"level23bg4"),keyAndValues(5,"level23bg5"),keyAndValues(6,"level23bg6"),keyAndValues(7,"level23bg7"),keyAndValues(8,"level23bg8"),keyAndValues(9,"level23bg9")],correctImages: [keyAndValues(1,"level23part1"),keyAndValues(2,"level23part2"),keyAndValues(3,"level23part3"),keyAndValues(4,"level23part4"),keyAndValues(5,"level23part5"),keyAndValues(6,"level23part6"),keyAndValues(7,"level23part7"),keyAndValues(8,"level23part8"),keyAndValues(9,"level23part9")]),
//
//            boxImages(level: 33,blurImages: [keyAndValues(1,"level33bg1"),keyAndValues(2,"level33bg2"),keyAndValues(3,"level33bg3"),keyAndValues(4,"level33bg4"),keyAndValues(5,"level33bg5"),keyAndValues(6,"level33bg6"),keyAndValues(7,"level33bg7"),keyAndValues(8,"level33bg8"),keyAndValues(9,"level33bg9")],correctImages: [keyAndValues(1,"level33part1"),keyAndValues(2,"level33part2"),keyAndValues(3,"level33part3"),keyAndValues(4,"level33part4"),keyAndValues(5,"level33part5"),keyAndValues(6,"level33part6"),keyAndValues(7,"level33part7"),keyAndValues(8,"level33part8"),keyAndValues(9,"level33part9")]),
//
//
//            boxImages(level: 34,blurImages: [keyAndValues(1,"level34bg1"),keyAndValues(2,"level34bg2"),keyAndValues(3,"level34bg3"),keyAndValues(4,"level34bg4"),keyAndValues(5,"level34bg5"),keyAndValues(6,"level34bg6"),keyAndValues(7,"level34bg7"),keyAndValues(8,"level34bg8"),keyAndValues(9,"level34bg9")],correctImages: [keyAndValues(1,"level34part1"),keyAndValues(2,"level34part2"),keyAndValues(3,"level34part3"),keyAndValues(4,"level34part4"),keyAndValues(5,"level34part5"),keyAndValues(6,"level34part6"),keyAndValues(7,"level34part7"),keyAndValues(8,"level34part8"),keyAndValues(9,"level34part9")]),
//
//            boxImages(level: 36,blurImages: [keyAndValues(1,"level36bg1"),keyAndValues(2,"level36bg2"),keyAndValues(3,"level36bg3"),keyAndValues(4,"level36bg4"),keyAndValues(5,"level36bg5"),keyAndValues(6,"level36bg6"),keyAndValues(7,"level36bg7"),keyAndValues(8,"level36bg8"),keyAndValues(9,"level36bg9")],correctImages: [keyAndValues(1,"level36part1"),keyAndValues(2,"level36part2"),keyAndValues(3,"level36part3"),keyAndValues(4,"level36part4"),keyAndValues(5,"level36part5"),keyAndValues(6,"level36part6"),keyAndValues(7,"level36part7"),keyAndValues(8,"level36part8"),keyAndValues(9,"level36part9")]),
//
//            boxImages(level: 37,blurImages: [keyAndValues(1,"level37bg1"),keyAndValues(2,"level37bg2"),keyAndValues(3,"level37bg3"),keyAndValues(4,"level37bg4")],correctImages: [keyAndValues(1,"level37part1"),keyAndValues(2,"level37part2"),keyAndValues(3,"level37part3"),keyAndValues(4,"level37part4")]),
//            boxImages(level: 38,blurImages: [keyAndValues(1,"level38bg1"),keyAndValues(2,"level38bg2"),keyAndValues(3,"level38bg3"),keyAndValues(4,"level38bg4")],correctImages: [keyAndValues(1,"level38part1"),keyAndValues(2,"level38part2"),keyAndValues(3,"level38part3"),keyAndValues(4,"level38part4")]),
//            boxImages(level: 39,blurImages: [keyAndValues(1,"level39bg1"),keyAndValues(2,"level39bg2"),keyAndValues(3,"level39bg3"),keyAndValues(4,"level39bg4")],correctImages: [keyAndValues(1,"level39part1"),keyAndValues(2,"level39part2"),keyAndValues(3,"level39part3"),keyAndValues(4,"level39part4")]),
//            boxImages(level: 40,blurImages: [keyAndValues(1,"level40bg1"),keyAndValues(2,"level40bg2"),keyAndValues(3,"level40bg3"),keyAndValues(4,"level40bg4")],correctImages: [keyAndValues(1,"level40part1"),keyAndValues(2,"level40part2"),keyAndValues(3,"level40part3"),keyAndValues(4,"level40part4")]),
//            boxImages(level: 41,blurImages: [keyAndValues(1,"level41bg1"),keyAndValues(2,"level41bg2"),keyAndValues(3,"level41bg3"),keyAndValues(4,"level41bg4")],correctImages: [keyAndValues(1,"level41part1"),keyAndValues(2,"level41part2"),keyAndValues(3,"level41part3"),keyAndValues(4,"level41part4")]),
//            boxImages(level: 42,blurImages: [keyAndValues(1,"level42bg1"),keyAndValues(2,"level42bg2"),keyAndValues(3,"level42bg3"),keyAndValues(4,"level42bg4")],correctImages: [keyAndValues(1,"level42part1"),keyAndValues(2,"level42part2"),keyAndValues(3,"level42part3"),keyAndValues(4,"level42part4")]),
//            boxImages(level: 43,blurImages: [keyAndValues(1,"level43bg1"),keyAndValues(2,"level43bg2"),keyAndValues(3,"level43bg3"),keyAndValues(4,"level43bg4")],correctImages: [keyAndValues(1,"level43part1"),keyAndValues(2,"level43part2"),keyAndValues(3,"level43part3"),keyAndValues(4,"level43part4")]),
//            boxImages(level: 50,blurImages: [keyAndValues(1,"level50bg1"),keyAndValues(2,"level50bg2"),keyAndValues(3,"level50bg3"),keyAndValues(4,"level50bg4")],correctImages: [keyAndValues(1,"level50part1"),keyAndValues(2,"level50part2"),keyAndValues(3,"level50part3"),keyAndValues(4,"level50part4")]),
//            boxImages(level: 51,blurImages: [keyAndValues(1,"level51bg1"),keyAndValues(2,"level51bg2"),keyAndValues(3,"level51bg33"),keyAndValues(4,"level51bg4"),keyAndValues(5,"level51bg5"),keyAndValues(6,"level51bg6")],correctImages: [keyAndValues(1,"level51part1"),keyAndValues(2,"level51part2"),keyAndValues(3,"level51part3"),keyAndValues(4,"level51part4"),keyAndValues(5,"level51part5"),keyAndValues(6,"level51part6")]),
//            boxImages(level: 52,blurImages: [keyAndValues(1,"level52bg1"),keyAndValues(2,"level52bg2"),keyAndValues(3,"level52bg3"),keyAndValues(4,"level52bg4"),keyAndValues(5,"level52bg5"),keyAndValues(6,"level52bg6")],correctImages: [keyAndValues(1,"level52part1"),keyAndValues(2,"level52part2"),keyAndValues(3,"level52part3"),keyAndValues(4,"level52part4"),keyAndValues(5,"level52part5"),keyAndValues(6,"level52part6")]),
//            boxImages(level: 53,blurImages: [keyAndValues(1,"level53bg1"),keyAndValues(2,"level53bg2"),keyAndValues(3,"level53bg3"),keyAndValues(4,"level53bg4"),keyAndValues(5,"level53bg5"),keyAndValues(6,"level53bg6")],correctImages: [keyAndValues(1,"level53part1"),keyAndValues(2,"level53part2"),keyAndValues(3,"level53part3"),keyAndValues(4,"level53part4"),keyAndValues(5,"level53part5"),keyAndValues(6,"level53part6")]),
//            boxImages(level: 54,blurImages: [keyAndValues(1,"level54bg1"),keyAndValues(2,"level54bg2"),keyAndValues(3,"level54bg3"),keyAndValues(4,"level54bg4"),keyAndValues(5,"level54bg5"),keyAndValues(6,"level54bg6")],correctImages: [keyAndValues(1,"level54part1"),keyAndValues(2,"level54part2"),keyAndValues(3,"level54part3"),keyAndValues(4,"level54part4"),keyAndValues(5,"level54part5"),keyAndValues(6,"level54part6")]),
//            boxImages(level: 55,blurImages: [keyAndValues(1,"level55bg1"),keyAndValues(2,"level55bg2"),keyAndValues(3,"level55bg3"),keyAndValues(4,"level55bg4"),keyAndValues(5,"level55bg5"),keyAndValues(6,"level55bg6")],correctImages: [keyAndValues(1,"level55part1"),keyAndValues(2,"level55part2"),keyAndValues(3,"level55part3"),keyAndValues(4,"level55part4"),keyAndValues(5,"level55part5"),keyAndValues(6,"level55part6")]),
//
//
//
//
//
//
//            boxImages(level: 98,blurImages: [keyAndValues(1,""),keyAndValues(2,""),keyAndValues(3,""),keyAndValues(4,""),keyAndValues(5,""),keyAndValues(6,""),keyAndValues(7,""),keyAndValues(8,""),keyAndValues(9,"")],correctImages: [keyAndValues(1,""),keyAndValues(2,""),keyAndValues(3,""),keyAndValues(4,""),keyAndValues(5,""),keyAndValues(6,""),keyAndValues(7,""),keyAndValues(8,""),keyAndValues(9,"")]),
//            boxImages(level: 99,blurImages: [keyAndValues(1,""),keyAndValues(2,""),keyAndValues(3,""),keyAndValues(4,"")],correctImages: [keyAndValues(1,""),keyAndValues(2,""),keyAndValues(3,""),keyAndValues(4,"")]),
//            boxImages(level: 97,blurImages: [keyAndValues(1,""),keyAndValues(2,""),keyAndValues(3,""),keyAndValues(4,""),keyAndValues(5,""),keyAndValues(6,"")],correctImages: [keyAndValues(1,""),keyAndValues(2,""),keyAndValues(3,""),keyAndValues(4,""),keyAndValues(5,""),keyAndValues(6,"")]),
//        ]
        
        
//    }
//    static func getLevel(level:Int) -> boxImages?
//    {
//        if let l = levels.first(where: {levelItem in
//            levelItem.level == level
//        })
//        {
//            return l
//        }
//        return nil
//    }
//}
