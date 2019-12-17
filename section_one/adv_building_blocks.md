**Conditionals and Flow Control**:

- What is a “boolean”?
  - a true/false value
- What are “truthy” values?
  - a value that translates to `true` when evaluated in a boolean context
- Are nil, 0, "0", "", 1, [], {} and -1 considered true or false?
  - True; only `nil` and `false` are considered false
- When do you use elsif?
  - With multiple conditionals that need to be considered
- When do you use unless?
  - When you want to do something outside of one special case. `print 'No problem' unless problem`
- What does <=> do?
  - The spaceship operator returns `-1`, `0`, or `1` depending on whether the left side is <, ==, or > than the right, respectively
- Why might you define your own <=> method?
  - To compare different instances of the same kind of object to one another
- What do || and && and ! do?
  - || returns true if either side is true; && returns false unless both sides are true; ! returns the opposite of the following bool
- What is returned by puts("woah") || true?
  - True; puts returns `nil` but || only needs one side to be true to return `true`
- What is ||=?
  - An assignment operator (`x ||= y`) that only sets `x=y` if `x` is a falsey value
- What is the ternary operator?
  - `condition ? do_if_true : do_if_false`; a shorthand means of writing an if-else statement
- When should you use a case statement?
  - When expecting multiple specific cases (e.g. I want different outputs for 1, 2, 3, 4, 5 instead of one output for 1..5)

---

**Iteration**:

- What does loop do?
  - Iterate and perform some action(s) multiple times
- What are the two ways to denote a block of code?
  - `{ }` and `do some_code end`
- What is an index variable?
  - A variable that keeps track of the iterations of a loop
- How do you print out each item of a simple array [1,3,5,7] with:
  - loop?
  - while?
  - \#each? `array.each{ |x| print "#{x}"}`
  - \#times?
- What’s the difference between while and until?
  - `while` loops as long as a conditional is met; `until` loops unless a conditional is met
- How do you stop a loop?
  - `break`
- How do you skip to the next iteration of a loop?
  - `next`
- How would you start the loop over again?
  - `redo`
- What are the (basic) differences between situations when you would use while vs #times vs #each?
  - `while` if you want to loop indefinitely as long as a certain condition isn't met
  - `#times` if you want to do something a set number of times
  - `#each` if you want to iterate over every item in an array
- What does nesting loops mean and when would you use it?
  - Declaring a loop inside of another loop. Used for sorting or on multi-dimensional arrays (arrays with arrays inside of them)

---

**Blocks, Procs, and Lambdas**:

- How is a block like a function?
  - You can do things within a block the same way you can a function
- How is a block different from a function?
  - Blocks are anonymous and cannot be called again by a name
- What are the two ways to declare a block?
  - `{}` and `do ... end`
- How do you return data from a block?
  - An implicit return will return the value of the last evaluated expression in the block
- What happens if you include a return statement in a block?
  - You will be returned from whatever method actually called the block - `arr.each{ blabh blah return blah}` will break out of .each
- Why would you use a block instead of just creating a method?
  - Blocks can be overwritten; so you can reuse code in different ways (e.g. when using `sort!`)
- What does yield do?
  - Yield stops a method to allow a block of code to run, then returns to executing the original method
- How do you pass arguments to a block from within a method?
  - `{ |variable| }`
- How do you check whether a block was actually passed in?
  - `#block_given?`
- What is a proc?
  -  AKA Procedures; a block that is saved to a variable
- What’s the difference between a proc and a block?
  - Procs can be saved to variables
- When would you use a proc instead of a block?
  - To reuse a block, or to use multiple at once
- How do you use a proc?
  - Pass it into a function and prepend it with `&` - e.g. `[1,2,3].each(&my_proc)`
- What is a closure?
  - A chunk of code that you can pass around which hangs onto the variables that you gave it when you first called it
- What is a lambda?
  - A stricter and more functional version of Procs
- What’s different between a lambda and a proc?
  - Lambdas will error if given the wrong number of arguments, and a lambda can use the explicit `return` statement without returning from the method it's enclosed in
- What is a Method (capital “M”)?
  - A way of taking an actual named method and passing it around as an argument (used rarely)
---

**Enumerable and Modules**:

- What is a module?
  - A collection of methods packaged together
- Why are modules useful?
  - It allows programmers to mix in a bunch of methods from one module into a new object without having to rewrite code
- What does #each do?
  - #each is a method that iterates through Array, Hash, and Range classes and passes each iteration's object to a specified block
- What does #each return?
  - #each returns the original collection that it was called on
- What does #map do?
  - Loops through a collection, does something at each iteration, and collects the results
- What does #map return?
  - #map returns a new array filled with whatever gets returned by the block each time it runs
- What is the difference between #map and #collect?
  - They are the same
- What does #select do?
  - Loops through a collection, selecting all objects whose iterations evaluated to `true` in the given block
- What does #select return?
  - A new object that contains only the items for which the original block returned `true`
- What is the difference between #each #map and #select?
  - `#each` loops, returns the object it was called on
  - `#map` loops, does something at each iteration, then returns a new array filled with results of the action done during each iteration
  - `#select` loops, evaluates whether an iteration meets certain criteria, then returns an object of all items which met criteria
- What does #inject do?
  - Keeps track of results as it iterates
- When might you use #inject?
  - Summing up the total values of an array
- How do you check if every item in a hash fulfills a certain criteria?
  - `#all?`
- What about if none of the elements fulfill that criteria?
  - `#none?`

---

**Writing Methods**:

- How many things should a method ideally do?
- What types of things should a method modify?
- What should you name a method?
- What does self mean?
- What do you need to do to create your own Ruby script file?
- How would you run a Ruby script from the command line?
- How can you check whether your script was being run from the command line?
- What is a shebang line?
- What does require do?
- What does load do?
- What is the difference between require and load?
- How do you access any parameters that were passed to your script file from the command line?
- What does #send do?
- When would #send be used that’s different from just running the method on an object ‘normally’?
