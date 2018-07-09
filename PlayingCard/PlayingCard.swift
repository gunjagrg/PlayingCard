//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Gunja Gurung on 7/8/18.
//  Copyright © 2018 Gunja Gurung. All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible
{
    var description: String { return "\(rank)\(suit)" }
    
    var suit: Suit
    var rank: Rank
    
    init(suit: Suit, rank: Rank) {
        self.suit = suit
        self.rank = rank
    }
    
    enum Suit: String, CustomStringConvertible {
        case spades = "♠️"
        case hearts = "❤️"
        case diamonds = "♦️"
        case clubs = "♣️"
        
        static var all = [Suit.spades, .hearts, .diamonds, .clubs]
        
        var description: String { return rawValue }
    }
    
    
    enum Rank: CustomStringConvertible {
        //case ace, two, three, ... jack, queen, king //best representation
        //But for demo purpose, we'll do the following, which, in turn,
        //affects how rest of the codes will be written:
        
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default: return 0
            }
        }
    
        static var all: [Rank] {
            var allRanks = [Rank.ace]
            for pips in 2...10 {
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"), .face("Q"), .face("K")]
            
            return allRanks
        }
        
        var description: String {
            switch self {
            case .ace: return "A"
            case .numeric(let pips): return String(pips)
            case .face(let kind): return kind
            }
        }
    }
}
