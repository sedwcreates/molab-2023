//: [Previous](@previous)
//ASCII art animals from https://www.asciiart.eu/
//Print off an ASCII shape for each word in the array

import Foundation

var words = Array<String>()

words = ["Dolphin", "Lobster", "Otter"]


for _ in words {
    print(dolphinArt())
    print(lobsterArt())
    print(otterArt())
}

func dolphinArt() -> String {
    return """
                ;'-.
    `;-._        )  '---.._
      >  `-.__.-'          `'.__
     /_.-'-._         _,   ^ ---)
  `       `'------/_.'----```
                     `
"""
}

func lobsterArt() -> String {
    return """
                         ,.---.
               ,,,,     /    _ `.
                \\\\   /      )
                 |||| /``-.__\
                 ::::/_
 {{`-.__.-'(`(^^(^^^(^ 9 `.========='
{{{{{{ { ( ( (  (   (-----:=
 {{.-'~~'-.(,(,,(,,,(__6_.'=========.
                 ::::\
                 |||| | ,-'
               ////   | `` _  )
               ''''     | `   /
                         `---''
"""
}

func otterArt() -> String {
    return """
  .-----.
 /      o\
|    o   °).-.
|       .-;(_/     .-.
 |     /  /)).---._|  `|  ,
  '.  '  /((       `'-./ _/|
    |  .'  )        .-.;`  /
     '.             |  `|-'
       '._        -'    /
        ``""--`------`
"""
}
