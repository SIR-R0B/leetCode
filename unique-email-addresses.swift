
    func numUniqueEmails(_ emails: [String]) -> Int {
    
    var fltrdEmails = [Character]()
    var plusFlag:Bool = false
    var atFlag:Bool = false
        
    var reassmbldEmails = [String]()
    var stringEmails:String = ""
        
    for i in 0..<emails.count {
      
    fltrdEmails = []
    plusFlag = false
    atFlag = false
    stringEmails = ""
        
        for char in emails[i]{
            
            if char == "+"{
                plusFlag = true
            }
            if char != "." && !plusFlag {
                fltrdEmails.append(char)   
            }
            if char == "." && atFlag {
                fltrdEmails.append(char)
            }
            if char == "@"{
                fltrdEmails.append(char)
                if plusFlag {
                    plusFlag = false   
                }
                atFlag = true
            }
            
        }
        
        for i in 0..<fltrdEmails.count {
            stringEmails.append(fltrdEmails[i])
        }
        
        reassmbldEmails.append(stringEmails)
        
      }
        
        return(Set(reassmbldEmails).count)
    
        }

    print(numUniqueEmails(["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]))

/*Every email consists of a local name and a domain name, separated by the @ sign.

For example, in alice@leetcode.com, alice is the local name, and leetcode.com is the domain name.

Besides lowercase letters, these emails may contain '.'s or '+'s.

If you add periods ('.') between some characters in the local name part of an email address, mail sent there will be forwarded to the same address without dots in the local name.  For example, "alice.z@leetcode.com" and "alicez@leetcode.com" forward to the same email address.  (Note that this rule does not apply for domain names.)

If you add a plus ('+') in the local name, everything after the first plus sign will be ignored. This allows certain emails to be filtered, for example m.y+name@email.com will be forwarded to my@email.com.  (Again, this rule does not apply for domain names.)

It is possible to use both of these rules at the same time.

Given a list of emails, we send one email to each address in the list.  How many different addresses actually receive mails? 
*/