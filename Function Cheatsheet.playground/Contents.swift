import UIKit

//Goldwater.dev Cheatsheets
//Functions Basics
//There are several different ways to declare functions.  We'll cover them all here.  Visit the youtube channel or https://goldwater.dev for more information about functions
//****************************************************************************************************************************************************************************

//Format for declaring a function
//Example in pseudocode: func functionName(arguments in parentheses) -> return variable type { function details in brackets}
//The func keyword.  This tells Swift that you're declaring a function
//Arguments in parenthesis - naming these is important.  Names should indicate what they are.  See examples.
//Return variable.  Can be void if nothing is returned.  Otherwise it is a type such as Bool, Int, String, Float, Double, etc.
//Brackets {}.  All the code that your function runs is found in the brakets.


//Example 1 - a function that takes no arguments and returns a value.
func goingToVegas () -> String {
    return "Welcome to Las Vegas"
}
var stringResult = goingToVegas()
print(stringResult)

//Example 2 - no arguments and no return value.  notice we don't include the -> in this case since we aren't returning anything.
func printMyFirstMeal () {
    print("You are going to eat at Carmine's this afternoon!")
}

//call function by referencing name and empty parentheses
printMyFirstMeal()

//Example 2.a
//Same as above but we incldue the -> Void.  You can do it either way.
func printMySecondMeal () -> Void {
    print("You are going to eat at Palm this afternoon!")
}
printMySecondMeal()

//Example 3 - function with arguments and a return value
func whatShouldIDo (amountOfCash:Int, scaredOfHeights:Bool) -> String {
    var resultString:String = ""
    if(amountOfCash>50 && scaredOfHeights) {
        resultString = "Go see Cirque du Soleil - Michael Jackson's Thriller"
    }
    else if (amountOfCash<=50 && scaredOfHeights){
        resultString = "You should go to Carrot Top"
    }
    else if (amountOfCash>50 && !scaredOfHeights){
        resultString = "You should go do the rides at the Stratosphere"
    }
    else {
        resultString = "You should go to ride the High Roller observation wheel"
    }
    return resultString
}

//calling the function using a variety of values to get all the answers.
print(whatShouldIDo(amountOfCash: 45, scaredOfHeights: true))
print(whatShouldIDo(amountOfCash: 60, scaredOfHeights: true))
print(whatShouldIDo(amountOfCash: 45, scaredOfHeights: false))
print(whatShouldIDo(amountOfCash: 60, scaredOfHeights: false))

//note. instead of assigning the value to returnString and returning that at the end, each of your if statements could have its own return value.  up to you.  whichever you prefer.

//Example 4 - function with arguments and no return value
func whatTreatShouldIGet (amountOfCash:Int, overTwentyOne: Bool) {
    var resultString:String = ""
    if(amountOfCash>50 && overTwentyOne) {
        resultString = "Go enjoy a BIG drink at Fat Tuesday"
    }
    else if (amountOfCash<=50 && overTwentyOne){
        resultString = "Go enjoy a drink at Fat Tuesday"
    }
    else if (amountOfCash>50 && !overTwentyOne){
        resultString = "Go get a Strawberry Shortcake Baked Alaska at The Wynn!"
    }
    else {
        resultString = "Get the titanic sundae at Carmine's"
    }
    print(resultString)
}
//call the function several times to test the variants you get by changing the arguments
whatTreatShouldIGet(amountOfCash: 80, overTwentyOne: true)
whatTreatShouldIGet(amountOfCash: 20, overTwentyOne: true)
whatTreatShouldIGet(amountOfCash: 80, overTwentyOne: false)
whatTreatShouldIGet(amountOfCash: 20, overTwentyOne: false)


//Default Values
//You can give arguments a default value if you want.  This lets you omit that value when calling it.
func canIDrink (isOverTwentyOne: Bool = true, amountOfCash: Int) {
    if(isOverTwentyOne && amountOfCash > 0){
            print("You can drink!")
    }
    else{
        print("You can't drink :(")
    }
}
canIDrink(amountOfCash: 20)
canIDrink(isOverTwentyOne: false, amountOfCash: 1000)

//Parameter Overloading
//This is a tricky topic that sounds complicated.  Long story short, you can call two different functions the same name if they take different parameters.
//Xcode knows which one you want based on the parameters you feed into it.
func myIdenticalFunction (amountOfCash:Int, isOverTwentyOne:Bool=true){
    print ("You have \(amountOfCash) dollars!  That's a lot of cash!")
}
func myIdenticalFunction (numberofNights:Int, lastName:String, pronoun:String){
    print ("\(pronoun) \(lastName), you are staying for \(numberofNights) nights!")
}
myIdenticalFunction(amountOfCash: 578)
myIdenticalFunction(numberofNights: 3, lastName: "Goldwater", pronoun: "Mr.")

//That's all folks
//Consider liking, subscribing, commenting and all that jazz for a youtube video if you like this cheatsheet!  It really does help me!
