/*
We are given two sentences A and B.  (A sentence is a string of space separated words.  Each word consists only of lowercase letters.)

A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.

Return a list of all uncommon words. 

You may return the list in any order.

 

Example 1:

Input: A = "this apple is sweet", B = "this apple is sour"
Output: ["sweet","sour"]

Example 2:

Input: A = "apple apple", B = "banana"
Output: ["banana"]

 

Note:

    0 <= A.length <= 200
    0 <= B.length <= 200
    A and B both contain only spaces and lowercase letters.


*/

func uncommonFromSentences(_ A: String, _ B: String) -> [String] {

    func filterDupes (_ arrStrings: [String]) -> [String] {
        return arrStrings.filter { arrStrings.firstIndex(of: $0) == arrStrings.lastIndex(of: $0) }
    }

    func convertStringToArray (_ s: String) -> [String] {
        return s.split(separator: " ").map(String.init)
    }

    func combineArrays (_ a: [String], _ b: [String]) -> [String] {
        return (a+b)
    }

    return filterDupes(combineArrays(convertStringToArray(A), convertStringToArray(B))) 
    }

print(uncommonFromSentences("this is the test the test", "the best test this is"))
print(uncommonFromSentences("s z z z s", "s z ejt"))
