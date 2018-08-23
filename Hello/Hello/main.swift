//
//  main.swift
//  Hello
//
//  Created by 윤호용 on 2017. 1. 7..
//  Copyright © 2017년 윤호용. All rights reserved.
//

import Foundation

print("Hello, World!")

let name = "steve Jobs"

print(name)

let firstName = "Steve"
let lastName = "Jobs"

print(firstName,terminator:"!!!")
print(lastName)
print(firstName,lastName)

let yearString = "2015"
debugPrint(yearString)
print(yearString)

enum TextAlignment {case Left, Right, Center}
enum ViewAlignment {case Left, Right, Center}


print(TextAlignment.Center)
print(ViewAlignment.Center)

debugPrint(TextAlignment.Center)
debugPrint(ViewAlignment.Center)
