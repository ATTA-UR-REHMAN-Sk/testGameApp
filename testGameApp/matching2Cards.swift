////
////  matching2Cards.swift
////  testGameApp
////
////  Created by apple on 26/11/2023.
////
//
//import Foundation
//
//struct Matching2Cards
//{
//    var level = 0
//    var match1:[keyAndValues] = []
//    var match2:[keyAndValues] = []
//    
//    static var levels:[Matching2Cards] = []
//    static func levelSet()
//    {
//        levels = [
//            Matching2Cards(
//                level: 1,
//                match1: [keyAndValues(id: 1, name: "aa"),keyAndValues(id: 2, name: "aa")],
//                match2: [keyAndValues(id: 2, name: "aa"),keyAndValues(id: 1, name: "aa")]
//            ),]
////            Matching2Cards(
////                level: 2,
////                match1: [keyAndValues(id: 1, name: "car"),keyAndValues(id: 2, name: "rocket")],
////                match2: [keyAndValues(id: 2, name: "space_astronot"),keyAndValues(id: 1, name: "road")]
////            ),
////            Matching2Cards(
////                level: 3,
////                match1: [keyAndValues(id: 1, name: "baby"),keyAndValues(id: 2, name: "bulb"),keyAndValues(id: 3, name: "jeep")],
////                match2: [keyAndValues(id: 2, name: "electric-pole"),keyAndValues(id: 3, name: "patrol_pimp"),keyAndValues(id: 1, name: "feeder")]
////            ),
////            Matching2Cards(
////                level: 4,
////                match1: [keyAndValues(id: 1, name: "green-tea"),keyAndValues(id: 2, name: "hammer"),keyAndValues(id: 3, name: "key"),keyAndValues(id: 4, name: "saw")],
////                match2: [keyAndValues(id: 3, name: "lock"),keyAndValues(id: 1, name: "vase"),keyAndValues(id: 2, name: "nail"),keyAndValues(id: 4, name: "wood")]
////
////            ),
////            Matching2Cards(
////                level: 5,
////                match1: [keyAndValues(1, "level5_car"),keyAndValues(2, "helicopter"),keyAndValues(3, "mouse_arrow"),keyAndValues(4, "walk")],
////                match2: [keyAndValues(4, "pedestrian"),keyAndValues(1, "traffic-light"),keyAndValues(3, "mouse"),keyAndValues(2, "pad")]
////
////            ),
////            Matching2Cards(
////                level: 5,
////                match1: [keyAndValues(1, "level5_car"),keyAndValues(2, "helicopter"),keyAndValues(3, "mouse_arrow"),keyAndValues(4, "walk")],
////                match2: [keyAndValues(2, "pedestrian"),keyAndValues(4, "traffic-light"),keyAndValues(3, "mouse"),keyAndValues(1, "pad")]
////
////            ),
////            Matching2Cards(
////                level: 6,
////                match1: [keyAndValues(1, "badminton_rackit"),keyAndValues(2, "ball"),keyAndValues(3, "football_net"),keyAndValues(4, "baseball"),keyAndValues(5, "cricket")],
////                match2: [keyAndValues(5, "cricket-ball"),keyAndValues(1, "badminton"),keyAndValues(3, "footballer"),keyAndValues(2, "tennis_rackit"),keyAndValues(4, "baseball-bat")]
////
////            ),
////            Matching2Cards(
////                level: 9,
////                match1: [keyAndValues(1, "fire_extinguisher"),keyAndValues(2, "level_water"),keyAndValues(3, "camera_roll"),keyAndValues(4, "honey"),keyAndValues(5, "beef_meat")],
////                match2: [keyAndValues(1, "fire"),keyAndValues(2, "swim"),keyAndValues(3, "camera"),keyAndValues(4, "honey_bee"),keyAndValues(5, "bear")]
////            ),
////            Matching2Cards(
////                level: 11,
////                match1: [keyAndValues(1, "level11_1"),keyAndValues(2, "level11_2"),keyAndValues(3, "level11_3"),keyAndValues(4, "level11_4")],
////                match2: [keyAndValues(1, "emoji_1"),keyAndValues(2, "emoji_2"),keyAndValues(3, "emoji_3"),keyAndValues(4, "emoji_4")]
////            ),
////            Matching2Cards(
////                level: 13,
////                match1: [keyAndValues(1, "tree"),keyAndValues(2, "bag"),keyAndValues(3, "ros"),keyAndValues(4, "eggplant")],
////                match2: [keyAndValues(1, "frog"),keyAndValues(2, "water"),keyAndValues(3, "parrot"),keyAndValues(4, "grape")]
////            ),
////            Matching2Cards(
////                level: 18,
////                match1: [keyAndValues(1, "call_emoji"),keyAndValues(2, "clapping_emoji"),keyAndValues(3, "handshake_emoji"),keyAndValues(4, "you_emoji")],
////                match2: [keyAndValues(1, "smartphone"),keyAndValues(2, "success"),keyAndValues(3, "friendship"),keyAndValues(4, "confused")]
////            ),
////            Matching2Cards(
////                level: 20,
////                match1: [keyAndValues(1, "squirral_1"),keyAndValues(2, "squirral_2"),keyAndValues(3, "squirral_3")],
////                match2: [keyAndValues(1, "squirral_color_1"),keyAndValues(2, "squirral_color_2"),keyAndValues(3, "squirral_color_3")]
////            ),
////            Matching2Cards(
////                level: 21,
////                match1: [keyAndValues(1, "goat"),keyAndValues(2, "bat"),keyAndValues(3, "turtle"),keyAndValues(4, "monkey")],
////                match2: [keyAndValues(1, "goat_color"),keyAndValues(2, "bat_color"),keyAndValues(3, "turtle_color"),keyAndValues(4, "monkey_color")]
////            ),
////            Matching2Cards(
////                level: 35,
////                match1: [keyAndValues(1, "frogs"),keyAndValues(2, "snail"),keyAndValues(3, "dog"),keyAndValues(4, "Mosquito")],
////                match2: [keyAndValues(1, "frogcolor"),keyAndValues(2, "snailColor"),keyAndValues(3, "dogcolor"),keyAndValues(4, "MosquitoColor")]
////            ),
////            Matching2Cards(
////                level: 44,
////                match1: [keyAndValues(1, "green_monster"),keyAndValues(2, "lion"),keyAndValues(3, "yellow_cow"),keyAndValues(4, "purple_rate")],
////                match2: [keyAndValues(1, "monster_shadow"),keyAndValues(2, "lion_shadow"),keyAndValues(3, "cow_shadow"),keyAndValues(4, "rate_shadow")]
////            ),
////            Matching2Cards(
////                level: 45,
////                match1: [keyAndValues(1, "ant"),keyAndValues(2, "bee"),keyAndValues(3, "butterfly"),keyAndValues(4, "lady")],
////                match2: [keyAndValues(1, "ant_shadow"),keyAndValues(2, "bee_shadow"),keyAndValues(3, "butterfly_shadow"),keyAndValues(4, "lady_shadow")]
////            ),
////            Matching2Cards(
////                level: 46,
////                match1: [keyAndValues(1, "beer"),keyAndValues(2, "deer"),keyAndValues(3, "duck"),keyAndValues(4, "squirral")],
////                match2: [keyAndValues(1, "beer_shadow"),keyAndValues(2, "deer_shadow"),keyAndValues(3, "duck_shadow"),keyAndValues(4, "squirral_shadow")]
////            ),
////            Matching2Cards(
////                level: 47,
////                match1: [keyAndValues(1, "Coconutcoctail"),keyAndValues(2, "Cupcoffee"),keyAndValues(3, "Juicebox"),keyAndValues(4, "Milk_box")],
////                match2: [keyAndValues(1, "Coconut_cocktail_shadow"),keyAndValues(2, "Cupshadow"),keyAndValues(3, "Juiceboxshadow"),keyAndValues(4, "Milkboxshadow")]
////            ),
////            Matching2Cards(
////                level: 48,
////                match1: [keyAndValues(1, "apricot"),keyAndValues(2, "avocado@3x"),keyAndValues(3, "banana"),keyAndValues(4, "grape")],
////                match2: [keyAndValues(1, "apricot_shadow"),keyAndValues(2, "avacodo_shdow"),keyAndValues(3, "banana_shadow"),keyAndValues(4, "grape_shdow")]
////            ),
////            Matching2Cards(
////                level: 49,
////                match1: [keyAndValues(1, "beer@3x"),keyAndValues(2, "goat@3x"),keyAndValues(3, "parrot@3x"),keyAndValues(4, "tiger@3x")],
////                match2: [keyAndValues(1, "beer_shadow@3x"),keyAndValues(2, "goat_shadow@3x"),keyAndValues(3, "parrot_shadow@3x"),keyAndValues(4, "tiger_shadow@3x")]
////            ),
////
////            Matching2Cards(
////                level: 99,
////                match1: [keyAndValues(1, ""),keyAndValues(2, ""),keyAndValues(3, ""),keyAndValues(4, "")],
////                match2: [keyAndValues(1, ""),keyAndValues(2, ""),keyAndValues(3, ""),keyAndValues(4, "")]
////            ),
////
////        ]
//    }
//    static func getLevel(level:Int) -> Matching2Cards?
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
