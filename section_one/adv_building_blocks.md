**Conditionals and Flow Control**:
What is a “boolean”?
  - a true/false value
What are “truthy” values?
  - a value that translates to `true` when evaluated in a boolean context
Are nil, 0, "0", "", 1, [], {} and -1 considered true or false?
  - True; only `nil` and `false` are considered false
When do you use elsif?
  - With multiple conditionals that need to be considered
When do you use unless?
  - When you want to do something outside of one special case. `print 'No problem' unless problem`
What does <=> do?
  - The spaceship operator returns `-1`, `0`, or `1` depending on whether the left side is <, ==, or > than the right, respectively
Why might you define your own <=> method?
  - To compare different instances of the same kind of object to one another
What do || and && and ! do?
  - || returns true if either side is true; && returns false unless both sides are true; ! returns the opposite of the following bool
What is returned by puts("woah") || true?
  - True; puts returns `nil` but || only needs one side to be true to return `true`
What is ||=?
  - An assignment operator (`x ||= y`) that only sets `x=y` if `x` is a falsey value
What is the ternary operator?
  - `condition ? do_if_true : do_if_false`; a shorthand means of writing an if-else statement
When should you use a case statement?
  - When expecting multiple specific cases (e.g. I want different outputs for 1, 2, 3, 4, 5 instead of one output for 1..5)

---

**Iteration**:
What does loop do?
  - Iterate and perform some action(s) multiple times
What are the two ways to denote a block of code?
  - `{ }` and `do some_code end`
What is an index variable?
  - A variable that keeps track of the iterations of a loop
How do you print out each item of a simple array [1,3,5,7] with:
loop?
while?
for?
\#each? `array.each{ |x| print "#{x}"}`
\#times?
What’s the difference between while and until?
How do you stop a loop?
How do you skip to the next iteration of a loop?
How would you start the loop over again?
What are the (basic) differences between situations when you would use while vs #times vs #each?
What does nesting loops mean and when would you use it?

---

**Blocks, Procs, and Lambdas**:
How is a block like a function?
How is a block different from a function?
What are the two ways to declare a block?
How do you return data from a block?
What happens if you include a return statement in a block?
Why would you use a block instead of just creating a method?
What does yield do?
How do you pass arguments to a block from within a method?
How do you check whether a block was actually passed in?
What is a proc?
What’s the difference between a proc and a block?
When would you use a proc instead of a block?
What is a closure?
What is a lambda?
What’s different between a lambda and a proc?
What is a Method (capital “M”)?
What do Methods basically allow you to do that could probably be pretty interesting when you’re writing some more advanced programs later on?

---

**Enumerable and Modules**:
What is a module?
Why are modules useful?
What does #each do?
What does #each return?
What does #map do?
What does #map return?
What is the difference between #map and #collect?
What does #select do?
What does #select return?
What is the difference between #each #map and #select?
What does #inject do?
When might you use #inject?
How do you check if every item in a hash fulfills a certain criteria?
What about if none of the elements fulfill that criteria?
What (basically) is an enumerator?

---

**Writing Methods**:
How many things should a method ideally do?
What types of things should a method modify?
What should you name a method?
What does self mean?
What do you need to do to create your own Ruby script file?
How would you run a Ruby script from the command line?
How can you check whether your script was being run from the command line?
What is a shebang line?
What does require do?
What does load do?
What is the difference between require and load?
How do you access any parameters that were passed to your script file from the command line?
What does #send do?
When would #send be used that’s different from just running the method on an object ‘normally’?
