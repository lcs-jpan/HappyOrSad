//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()
var Input = 0

// Print out the input provided
print("You said:")
print(rawInput)

// Make sure the input isn't nil
//(Unwrap the optional)
guard let input = rawInput else {
    // If we got here, input is nil, so quit program
    exit(9) // exit with error code 9
}

// Print the verified input
print(input)

//Lope over each character of the input string
var happyCount = 0
var sadCount = 0
for individualCharacter in input {
    
    // DEBUG: What character are we looking at now?
    print(individualCharacter)
    
    // Is the character happy, sad, or neither?
    if individualCharacter == "😀" {
        happyCount += 1
    }else if individualCharacter == "😩" {
        sadCount += 1
    }
    
}


// Output
if sadCount == happyCount {
    print("unsure")
} else if sadCount <= happyCount {
    print("happy")
} else if sadCount >= happyCount {
    print("sad")
}



//
