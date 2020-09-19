import UIKit

/*: 1. Create a a function that greets the person by saying Hello to their name.
 ```
 sayHello(name: "Omar") // Output:  Hello Omar
 ```
 */
func sayHello (name: String){
    print ("Hello \(name)")
}

sayHello(name: "Omar")


/*: 2. Create a a function that greets the person by saying (Hello) to their names, or "Hello"'s equivalent translation in other languages. Choose at least 3 languages.
 
 > ***(Bonus!)**: If the language is not provided, english is the default value.
```
 sayHello(name: "Omar", language: "English") // Output:  Hello Omar
 sayHello(name: "Omar", language: "French") // Output:  Bonjour Omar
 sayHello(name: "Omar", language: "Turkish") // Output:  Merhaba Omar

```
*/
func sayHelloLanguage (name: String, language: String){
    if language == "English"{
        print ("Hello \(name)")
    }
    else if language == "French"{
        print("bonjour \(name)")
    }
    else if language == "Turkish"{
           print("Merhaba \(name)")
       }
    else {
        print ("Hello \(name)")
    }
}

sayHelloLanguage(name: "Mariam", language: "English")
sayHelloLanguage(name: "Mohammad", language: "French")
sayHelloLanguage(name: "Faisal", language: "Turkish")
sayHelloLanguage(name: "Fawaz", language: "Spanish")

/*:
3. Create a function that will take your birth year, and calculates your age
 > ***Bonus!**: Insert months and days.
```
 calculateAge(birthYear: 1996) // Output: 24
```
*/
func calculateAge (birthYear: Int, birthMonth: Int, birthDay: Int) -> String{
    var todayYear  = 2020
    var todayMonth = 9
    var todayDay = 19
    
    if birthDay > todayDay {
        todayDay = todayDay + 30
        todayMonth = todayMonth - 1
        
    }
    
    if birthMonth > todayMonth {
         todayMonth = todayMonth + 12
         todayYear = todayYear - 1
       
    }
    
    let year = todayYear - birthYear
    let month = todayMonth - birthMonth
    let day = todayDay - birthDay
    
    
   return "\(year) years and \(month) months and \(day) days"
}


print(calculateAge(birthYear: 2002, birthMonth: 9, birthDay: 28))
/*: 4. Create a a function that takes a parameter of a person's name, and it **returns** the meaning of the name. (do at least 3 names)
```
 print(meaning(name: "رتاج")) // Output:  الباب العظيم
 print(meaning(name: "حيدر")) // Output:  الأسد الجميل
 print(meaning(name: "غدير")) // Output:  المطر

```
*/
func meaningName (name: String) -> String {
//    if name == "رتاج" {
//        return "الباب العظيم"
//    }
//    else if name == "حيدر" {
//        return "الاسد العظيم"
//    }
//    else if name == "غدير" {
//        return "المطر"
//    }
//    else{
//        return "هذا الاسم غير متوفر حاليا في البرنامح"
//    }
//}
//
//print(meaningName(name: "غدير"))
//
//    switch name{
//    case "رتاج" : return "الباب العظيم"
//    case "حيدر": return "الاسد العظيم"
//    case "غدير" : return "المطر"
//    default : return "هذا الاسم غير متوفر حاليا في البرنامح"
//    }
    
    let names = [
         "رتاج":"الباب العظيم",
         "حيدر":"الاسد العظيم",
         "غدير":"المطر"
     ]
     return names[name]!
     }
 print(meaningName(name: "رتاج"))

/*: 5. Create a a function that takes a parameter of a person's name, and it **returns** the meaning of the name. (do at least 3 names)
 
 > **((BONUS))**: Create it using dictionaries
```
 print(meaning(name: "رتاج")) // Output:  الباب العظيم
 print(meaning(name: "حيدر")) // Output:  الأسد الجميل
 print(meaning(name: "غدير")) // Output:  المطر

```
*/

//done above
/*:
 6. Create a random joke function that returns a random joke from an array stored inside the function
 ```
 print(randomJoke()) // Output: مرة واحد راح للبقالة قالوه عندك جبنة بيضة قالو لا وهو عنده قوه
 ```
 */
func randomJoke() -> String {
    let jokes = ["Why do we tell actors to break a leg, because every play has a cast",
    "I invented a new word! Plagiarism",
    " Why did the bicycle collapse? it was two tired"
    ]
    return jokes.randomElement()!
}
print (randomJoke())

/*:
7. Create a function that converts KGs to pounds. And a function that converts pounds to KGs
 > 1 KG = 2.204 Pounds
```
 print(poundToKilo(4)) // Output: 1.814368
 print(KiloToPound(4)) // Output: 8.81849

```
*/
func kiloToPound ( _ kilo: Double) -> Double{
    return 2.204 * kilo
}
func poundToKilo ( _ pound: Double) -> Double{
    return pound / 2.204
}

print(poundToKilo(9))
print(kiloToPound(9))

print(String(format: "%.2f", poundToKilo(9)))
print(String(format: "%.2f", kiloToPound(9)))

/*:
8. Create a function that takes an array of integer, and it returns an array with grades that are only higher then 90!
 > ***SUPER DUPER** Use `filter` method!
```
 print(above90([60, 70, 80, 90, 92, 91])) // Output: [90, 92, 91]

```
*/
func above90 (_ grades: [Int]) -> [Int] {
    return grades.filter {$0>90}
//    var tempGrades: [Int] = []
//    for grade in grades {
//        if grade >= 90 {
//            tempGrades.append(grade)
//        }
//    }
//    return tempGrades
}

print(above90([60, 70, 80, 90, 92, 91]))

/*:
 
9. Create a function that converts multiple KGs to pounds. It takes array of Kilos, and returns array of pounds
 
> 1 KG = 0.453592
 
 >  **SUPER DUPER** Use `map` method!
```
 print(poundsToKilos([4,5,6,7])) // Output: [1.81437, 2.26796, 2.72155, 3.17515]

```
*/
func poundsToKilos(_ pounds: [Double]) -> [Double] {
    return pounds.map {poundToKilo($0)}
//    var kilos: [Double] = []
//    for pound in pounds {
//        let kilo = poundToKilo(pound)
//        kilos.append(kilo)
//    }
//    return kilos
}
print(poundsToKilos([4,5,6,7]))



