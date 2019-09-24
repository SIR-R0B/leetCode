/*
Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.
*/

func findWords(_ words: [String]) -> [String]{

let top = ["q","w","e","r","t","y","u","i","o","p"]
let middle = ["a","s","d","f","g","h","j","k","l"]
let bottom = ["z","x","c","v","b","n","m"]

return words.filter { $0.lowercased().allSatisfy( { middle.contains(String($0)) } ) } + words.filter { $0.lowercased().allSatisfy( { top.contains(String($0)) } ) } + words.filter { $0.lowercased().allSatisfy( { bottom.contains(String($0)) } ) }

}

print(findWords(["gas", "this", "cvbnm"]))