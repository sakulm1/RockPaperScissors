//
//  main.swift
//  RockPaperScissors
//
//  Created by Lukas Maile on 28.04.23.
//

import Foundation

var game = Game(playerScore: 0, botScore: 0)
var console = Console()
var commands = Commands()


commands.getTitle()

while true{
    
    commands.checkCommands(console.get())
    
}
