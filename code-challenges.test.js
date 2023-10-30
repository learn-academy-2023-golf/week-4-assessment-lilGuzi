// ASSESSMENT 4: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in an array, removes the first item from the array and shuffles the remaining items.

// a) Create a test with an expect statement using the variable provided.
// HINT: Check out this resource: https://jestjs.io/docs/expect#expectarraycontainingarray

describe("diffArr", () => {
      it("takes in an array, removes the first item from the array and shuffles the remaining items", () => {
          const colors1 = ["purple", "blue", "green", "yellow", "pink"]
          // Expected output example (can be a different order): ["yellow", "blue", "pink", "green"]
          const colors2 = ["chartreuse", "indigo", "periwinkle", "ochre", "aquamarine", "saffron"]
          // Expected output example (can be a different order): ["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]
          expect(diffArr(colors1)).toEqual(expect.arrayContaining(["yellow", "blue", "pink", "green"]))
          expect(diffArr(colors2)).toEqual(expect.arrayContaining(["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]))
        })
      })

// b) Create the function that makes the test pass.
// Pseudo code:

// declares a function that takes in an array 
const diffArr = (array) => {
//declares a variable that iterates throught the array and removes the first item from the array
    const shuffledArr = array.slice(1) 
// calls the new array without the first item and randomizes the placement of the other items 
    shuffledArr.sort(() => Math.random() - 0.5)
// returns the shuffled array 
    return shuffledArr
}

// --------------------2) Create a function that takes in an object that contains up votes and down votes and returns the end tally.

// a) Create a test with expect statements for each of the variables provided.

describe("endTally", () => {
      it("takes in an object that contains up votes and down votes and returns the end tally", () => {
          const votes1 = { upVotes: 13, downVotes: 2 }
          // Expected output: 11
          const votes2 = { upVotes: 2, downVotes: 33 }
          // Expected output: -31
          expect(endTally(votes1)).toEqual(11)
          expect(endTally(votes2)).toEqual(-31)
        })
      })

// b) Create the function that makes the test pass.
// Pseudo code:
// delcares a function called endtally and takes a parameter 
const endTally = (votes) => {
// returns the upvotes value minus the downvotes value
    return votes.upVotes - votes.downVotes
}