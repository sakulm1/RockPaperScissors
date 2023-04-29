//
//  Commands.swift
//  RockPaperScissors
//
//  Created by Lukas Maile on 28.04.23.
//

import Foundation

class Commands{
    
    var game = Game(playerScore: 0, botScore: 0)
    
    func getCommands(){
        let list = ["help" : "Show list of Commands",
                    "start" : "Starts the game",
                    "exit" : "Exit the game"]
        for item in list{
            print("\(item.key) -> \(item.value)")
        }
    }
    
    
    func checkCommands(_ text: String){
        switch text{
        case "help":
            print(self.getCommands())
        case "start":
            game.newGame()
        case "title":
            self.getTitle()
        case "exit":
            exit(EXIT_SUCCESS)
        default:
            print("⁉️ No command like --- \(text) ---")
        }
    }
    
    
    func getTitle(){
        let titel = """
        
┏━━━┓╋╋╋╋╋┏┓╋┏━━━┓╋╋╋╋╋╋╋╋╋╋┏━━━┓
┃┏━┓┃╋╋╋╋╋┃┃╋┃┏━┓┃╋╋╋╋╋╋╋╋╋╋┃┏━┓┃
┃┗━┛┣━━┳━━┫┃┏┫┗━┛┣━━┳━━┳━━┳━┫┗━━┳━━┳┳━━┳━━┳━━┳━┳━━┓
┃┏┓┏┫┏┓┃┏━┫┗┛┫┏━━┫┏┓┃┏┓┃┃━┫┏┻━━┓┃┏━╋┫━━┫━━┫┏┓┃┏┫━━┫
┃┃┃┗┫┗┛┃┗━┫┏┓┫┃╋╋┃┏┓┃┗┛┃┃━┫┃┃┗━┛┃┗━┫┣━━┣━━┃┗┛┃┃┣━━┃
┗┛┗━┻━━┻━━┻┛┗┻┛╋╋┗┛┗┫┏━┻━━┻┛┗━━━┻━━┻┻━━┻━━┻━━┻┛┗━━┛
╋╋╋╋╋╋╋╋╋╋╋╋╋╋╋╋╋╋╋╋┃┃
╋╋╋╋╋╋╋╋╋╋╋╋╋╋╋╋╋╋╋╋┗┛

"""
        print(titel)
        print("type 'help' for more information")
    }
}
