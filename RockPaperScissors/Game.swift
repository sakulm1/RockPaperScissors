//
//  Game.swift
//  RockPaperScissors
//
//  Created by Lukas Maile on 28.04.23.
//

import Foundation


/// Handels all the game features
///```
///var game = Game(playerScore: 0, botScore: 0)
class Game{
    
    var console = Console()
    
    let playerScore: Int
    let botScore: Int
    
    /// Initializes the new game
    /// - Parameters:
    ///   - playerScore: Sets the player score
    ///   - botScore: Sets the bot score
    init(playerScore: Int, botScore: Int) {
        self.playerScore = playerScore
        self.botScore = botScore
    }
    
    /// This function checks who won a game. Player and bot choices are represented as integers
    /// Rock -> 1
    /// Paper -> 2
    /// Scissors -> 3
    /// - Parameters:
    ///   - player: Player choice as an integer
    ///   - bot: Bot choice as an intgeger
    /// - Returns: The function returns a bool. If the player won it return true else false.
    /// ```
    /// print(checkWinner(1,3) // true
    /// print(checkWinner(1,2) // false
    /// ```
    func checkWinner(_ player: Int,_ bot: Int) -> Bool {
        
        var output: Bool
        
        if player == 1 && bot == 3 {
            output = true
        }else if player == 2 && bot == 1{
            output = true
        }else if player == 3 && bot == 2 {
            output = true
        }else{
            output = false
        }
        
        return output
    }
    
    /// This function starts a new game.
    ///```
    ///var game = Game(playerScore: 0, botScore: 0)
    ///game.newGame()
    ///```
    func newGame(){
        ///Random Value between 1 and 3
        let botChoice: Int = Int.random(in: 1...3)
        
        print("""
        Choose between...
        - Rock 🪨
        - Paper 📃
        - Scissors ✂️
        """)
        /// The player choice is read from the cosole
        let  playerChoice = console.get()
        /// The player choice get transformed to an Int value and stored in this variable
        var playerChoiceInt: Int
        
        switch playerChoice {
        case "Rock":
            playerChoiceInt = 1
        case "Paper":
            playerChoiceInt = 2
        case "Scissors":
            playerChoiceInt = 3
        default:
            playerChoiceInt = 0
        }
        
        print(checkWinner(playerChoiceInt, botChoice))
        
    }
}
