**Numbers, Operators, Expressions**:

- What’s the difference between an `Integer` and a `Float`?
  - Integers are whole numbers, floats have decimals.
- Why should you be careful when converting back and forth between integers and floats?
  - You lose decimals and, transitively, accuracy.
- What’s the difference between =, ==, and ===?
  - `=` sets a value, `==` compares values, `===` compares values and data types
- How do you do exponents in Ruby?
  - `**`; `a**b` is equal to `a^b`.
- What is a `range`?
  - An interval with a beginning and an end. Usually numbers or letters.
- How do you create a range?
  - `x..y` or `x...y`
- What’s the difference between `(1..3)` and `(1...3)`?
  - `..` is inclusive, `...` excludes the uppermost value.
- What are three ways to create a range?
  - `x..y`, `x...y`, `Range.new(x, y)`

---

**Strings**

- What’s the difference between single and double quotes?
  - Double quotes allow for string interpolation.
- What is string interpolation?
  - Interpolation inserts the values of an object as a string. Signified like so: `"{my_object}"`
- What are escape characters?
  - Characters which invoke an alternative interpretation of following characters
- What are line breaks?
  - `"/n"`, the string representation of starting a new line with `Enter`
- How do you make other things into strings?
  - `to_s`
- How do you concatenate strings?
  - `str.concat("string_to_add")` OR `"str_one" + "str_two"`
- How do you access a specific character or substring?
  - Refer to the index/indices of the character/string: `'abc'[1] => "b"`
- How do you split up strings into arrays?
  - `str.split()`
- How are strings and arrays similar?
  - They're both able to contain multiple different values, and those values are referenced the same way (`object[index]`)
- How do you get and clean up user input on the command line?
  - `gets` takes input and includes a trailing line break; `gets.chomp` will remove the trailing line break
- What does it mean that strings are “mutable” and why care?  
  - Mutable values can be changed after they are set. Constant values should not be mutable.
- What is a symbol?
  - Symbols are a reference to a value.
- How is a symbol different from a string?
  - Symbols are immutable, and take up less memory
- What is a Regular Expression (RegEx)?
  - A sequence of characters used to define a search pattern
- How can you center or right-justify a string?
  - `s.center(x)`, `s.ljust(x)`, `s.rjust(x)`, where `x` is the number of characters of padding that you want.

  ---

  **Arrays**:

- What are three ways to create an array?
  - `Array.new(values, to, add)`, `my_array = [1, 2, 3]`, `digits = Array(0..9)`
- How do you prepopulate the array with default data?
  - Declare values as parameters withing Array.new or within brackets depending on method used to create the array.
- How do you access items in an array?
  - `array_name[index]`
- How can you access a specific group of items in an array?
  - Select a range of indices inside of brackets
- How do you modify the items in an array?
  - `array_name[index] = new_value`
- How do you combine arrays?
  - `array_one + array_two`
- How do you find the values in one array that aren’t in another?
  - `(arr_one - arr_two) | (arr_two - arr_one) => [array, of, differences]` *FOOTNOTE*
- How do you find values in both arrays?
  - `[array_one] & [array_two] => [array, of, similarities]`
- What is the difference between push/pop and shift/unshift?
  - `push/pop` add to/remove from the END of an array, `shift/unshift` remove from/add to the BEGINNING
- What is the shovel operator?
  - `<<`; does different things depending on the object it's used on
  - `Array << value` will push an item into an array
  - `String << value` will append the value to a string, modifying the original string without creating a new one
  - `Integer << value` will do a "left shift", rotating the bits to the left
- How is > arr.pop different from > arr[-1]?
  - `arr.pop` will remove the last value from the array and return it, whereas `arr[-1]` does not alter the array
- How is pushing or <<ing another array into your array different from just adding them together?
  - `push` and `<<` will insert one array into another as a single value, rather than pull each value out from the second array and push them into the first one. The new array would look like: `[1, 2, 3, [4, 5, 6]]`
- How do you delete items in an array?
  - `[1, 2, 7, 5] - [7] => [1, 2, 5]` OR `Array.delete(value)`
- Why should you be careful deleting items in an array?
  - Whenever you delete an item from an array, all following elements will have their index shifted to the left by 1.
- How can you convert arrays to strings?
  - `array.join` will convert the values into a string
  - String interpolation or the `to_s` method will print the array with syntax as a string
- How can you convert from other data types to arrays?
  - `String.split`
  - `Array.new(value)`
- How can you figure out if an array contains a particular value?
  - `Array.include? value`
- How do you find the biggest item in an array?
  - `Array.max`
- How do you find the smallest item in an array?
  - `Array.min`
- How do you remove any duplicates from your array?
  - `Array.uniq`
- How do you find out how big an array is?
  - `Array.length`
- How do you put an array in order?
  - `Array.sort`
- What are the naming conventions for arrays?
  - Same as other variables. snake_case
- What should you store in arrays?
  - Datasets

*FOOTNOTES*
http://www.chrisrolle.com/en/blog/array-coherences

---

**Hashes**

- What is a hash?
  - A collection of key value pairs
- What are keys and values?
  - Keys are a reference to data, which is stored in a value
- How is a hash similar to an Array?
  - They both contain sets of data
- How is a hash different from an Array?
  - Hashes do not have indices. Values are accessed by referencing their keys.
- What are 3 ways to create a hash?
  - `{ "one" => "ichi", "two" => "ni", "three" => "san"}`
  - `Hash.new`
  - `variable_name = Hash["key", value, "key", value]`
- What is the hash rocket?
  - The syntax, `=>`, which separates a key from a value
- How do you access data in a hash?
  - `hash_name["key"]`
- How do you change data in a hash?
  - `hash_name["key"] = new_value`
- What types of data are good to store in a hash?
  - Attributes (i.e. `player_one = {"health" => 100, "name" => "John", "speed" => 5}`)
- What are options hashes?
  - Hashes that are used as a means of passing options or parameters to a method.
- How do you delete data from a hash?
  - By setting a key's value to nil OR by calling `Hash.delete(key)`
- How do you add hashes together?
  - `hash_one.merge(hash_two)`; conflicts are resolved by the incoming hash overriding the hash that the method is being called on
- How do you list out all the keys or values?
  - `Hash.keys` & `Hash.values`
- How do you see if the hash contains a key or value?
  - `Hash.key?(key)` & `Hash.value?(value)`
- What is a set?
  - A hash where all values are either `True` or `False`

---

**Dates and Times**
- How do you get the current date and time?
  - `my_time = Time.new` or `my_time = Time.now`
- How do you find just the Year? Month? Hour? Second? Weekday?
  - `my_time.year .month .hour .sec .wday`
- How do you create a Time specifically for 12/25/2013?
  - `Time.new(2013, 12, 25)`
- How do you find how many days have passed between two Time’s?
  - `(later_time - earlier_timer)/60/60/24.to_i`
- How would you find out the time that was 100 seconds ago? 10 days ago?
  - `time-100`, `time-(60*60*24*10)`

---

**Other Random Stuff**

- What is nil?
  - `nil` is the non value. Ruby's version of null
- How do you check if something is nil?
  - `object.nil?`
- What’s the difference between nil and blank and empty?
  - `#blank?` and `#empty?` both check if an object has nothing in it, but blank ignores whitespace characters. While blank/empty objects have nothing in them, they still exist, where as `nil` does not.
- Are the following nil or empty? * " ", "", [], [""], {}
  - nil, empty, empty, empty, neither, empty
- What’s the difference between puts and p and print?
  - `p` runs `#inspect` on an object while `#puts` runs `#to_s`. `puts` adds a newline after executing, print does not.
- What does inspect do?
  - Inspect tells the class name, `object_id` and lists off instance variables
- What do +=, -=, \*= and /= do?
  - Perform a numerical operation and store the result into the variable that is having the operation performed on it.
- What is parallel assignment?
  - Assigning values to more than one variable at a time.
- What’s the easiest way to swap two variables?
  - Using parallel assignment.
  - `a,b = b,a`
