> getwd()
[1] "/Users/Pramod/Github/RProgramming"
> swirl()
Error in swirl() : could not find function "swirl"
> install.packages("swirl")
--- Please select a CRAN mirror for use in this session ---
trying URL 'https://cran.microsoft.com/bin/macosx/contrib/4.1/swirl_2.4.5.tgz'
Content type 'application/octet-stream' length 347422 bytes (339 KB)
==================================================
downloaded 339 KB


The downloaded binary packages are in
	/var/folders/sq/_xv9n8817131kn7tj3y10mzh0000gn/T//RtmptiaNgH/downloaded_packages
> library(swirl)

| Hi! Type swirl() when you are ready to begin.

> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same name as you did then. If you are new, call yourself something unique.

What shall I call you? Pramod

| Thanks, Pramod. Let's cover a couple of quick housekeeping items before we begin our first lesson. First of all, you should know that when you see '...', that means you should press Enter when you are done reading and ready to continue.

...  <-- That's your cue to press Enter to continue

| Also, when you see 'ANSWER:', the R prompt (>), or when you are asked to select from a list, that means it's your turn to enter a response, then press Enter to continue.

Select 1, 2, or 3 and press Enter 

1: Continue.
2: Proceed.
3: Let's get going!

Selection: 1

| You can exit swirl and return to the R prompt (>) at any time by pressing the Esc key. If you are already at the prompt, type bye() to exit and save your progress. When you exit properly, you'll see a short message letting you know you've done so.

| When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

| Let's get started!

...

| To begin, you must install a course. I can install a course for you from the internet, or I can send you to a web page (https://github.com/swirldev/swirl_courses) which will provide course options and directions for installing courses yourself. (If you
| are not connected to the internet, type 0 to exit.)

1: R Programming: The basics of programming in R
2: Regression Models: The basics of regression modeling in R
3: Statistical Inference: The basics of statistical inference in R
4: Exploratory Data Analysis: The basics of exploring data in R
5: Don't install anything for me. I'll do it myself.

Selection: 1
  |======================================================================================================================================================================================================================================================| 100%

| Course installed successfully!


| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers       4: Vectors                    5: Missing Values             6: Subsetting Vectors         7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply         11: vapply and tapply         12: Looking at Data           13: Simulation                14: Dates and Times           15: Base Graphics             

Selection: 3
  |                                                                                                                                                                                                                                                      |   0%

| In this lesson, you'll learn how to create sequences of numbers in R.

...
  |===========                                                                                                                                                                                                                                           |   4%
| The simplest way to create a sequence of numbers in R is by using the `:` operator. Type 1:20 to see how it works.

> 1:20
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| That's the answer I was looking for.
  |=====================                                                                                                                                                                                                                                 |   9%
| That gave us every integer between (and including) 1 and 20. We could also use it to create a sequence of real numbers. For example, try pi:10.

> pi:10
[1] 3.141593 4.141593 5.141593 6.141593 7.141593 8.141593 9.141593

| Excellent job!
  |================================                                                                                                                                                                                                                      |  13%
| The result is a vector of real numbers starting with pi (3.142...) and increasing in increments of 1. The upper limit of 10 is never reached, since the next number in our sequence would be greater than 10.

...
  |===========================================                                                                                                                                                                                                           |  17%
| What happens if we do 15:1? Give it a try to find out.

> 15:1
 [1] 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1

| Excellent work!
  |=====================================================                                                                                                                                                                                                 |  22%
| It counted backwards in increments of 1! It's unlikely we'd want this behavior, but nonetheless it's good to know how it could happen.

...
  |================================================================                                                                                                                                                                                      |  26%
| Remember that if you have questions about a particular R function, you can access its documentation with a question mark followed by the function name: ?function_name_here. However, in the case of an operator like the colon used above, you must enclose
| the symbol in backticks like this: ?`:`. (NOTE: The backtick (`) key is generally located in the top left corner of a keyboard, above the Tab key. If you don't have a backtick key, you can use regular quotes.)

...
  |===========================================================================                                                                                                                                                                           |  30%
| Pull up the documentation for `:` now.

> ? `:`
starting httpd help server ... done

| You got it right!
  |======================================================================================                                                                                                                                                                |  35%
| Often, we'll desire more control over a sequence we're creating than what the `:` operator gives us. The seq() function serves this purpose.

...
  |================================================================================================                                                                                                                                                      |  39%
| The most basic use of seq() does exactly the same thing as the `:` operator. Try seq(1, 20) to see this.

> seq(1,20)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| Your dedication is inspiring!
  |===========================================================================================================                                                                                                                                           |  43%
| This gives us the same output as 1:20. However, let's say that instead we want a vector of numbers ranging from 0 to 10, incremented by 0.5. seq(0, 10, by=0.5) does just that. Try it out.

> seq(0,10, by=0.5)
 [1]  0.0  0.5  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0  5.5  6.0  6.5  7.0  7.5  8.0  8.5  9.0  9.5 10.0

| Your dedication is inspiring!
  |======================================================================================================================                                                                                                                                |  48%
| Or maybe we don't care what the increment is and we just want a sequence of 30 numbers between 5 and 10. seq(5, 10, length=30) does the trick. Give it a shot now and store the result in a new variable called my_seq.

> seq(5,10, length=30)
 [1]  5.000000  5.172414  5.344828  5.517241  5.689655  5.862069  6.034483  6.206897  6.379310  6.551724  6.724138  6.896552  7.068966  7.241379  7.413793  7.586207  7.758621  7.931034  8.103448  8.275862  8.448276  8.620690  8.793103  8.965517  9.137931
[26]  9.310345  9.482759  9.655172  9.827586 10.000000

| Not quite, but you're learning! Try again. Or, type info() for more options.

| You're using the same function here, but changing its arguments for different results. Be sure to store the result in a new variable called my_seq, like this: my_seq <- seq(5, 10, length=30).

> my_seq <- seq(5,10, length=30)

| That's the answer I was looking for.
  |================================================================================================================================                                                                                                                      |  52%
| To confirm that my_seq has length 30, we can use the length() function. Try it now.

> length(my_seq)
[1] 30

| You are really on a roll!
  |===========================================================================================================================================                                                                                                           |  57%
| Let's pretend we don't know the length of my_seq, but we want to generate a sequence of integers from 1 to N, where N represents the length of the my_seq vector. In other words, we want a new vector (1, 2, 3, ...) that is the same length as my_seq.

...
  |======================================================================================================================================================                                                                                                |  61%
| There are several ways we could do this. One possibility is to combine the `:` operator and the length() function like this: 1:length(my_seq). Give that a try.

> 1:length(my_seq)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

| Your dedication is inspiring!
  |================================================================================================================================================================                                                                                      |  65%
| Another option is to use seq(along.with = my_seq). Give that a try.

> seq(along.with = my_seq)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

| You're the best!
  |===========================================================================================================================================================================                                                                           |  70%
| However, as is the case with many common tasks, R has a separate built-in function for this purpose called seq_along(). Type seq_along(my_seq) to see it in action.

> seq_along(my_seq)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

| Excellent work!
  |======================================================================================================================================================================================                                                                |  74%
| There are often several approaches to solving the same problem, particularly in R. Simple approaches that involve less typing are generally best. It's also important for your code to be readable, so that you and others can figure out what's going on
| without too much hassle.

...
  |=================================================================================================================================================================================================                                                     |  78%
| If R has a built-in function for a particular task, it's likely that function is highly optimized for that purpose and is your best option. As you become a more advanced R programmer, you'll design your own functions to perform tasks when there are no
| better options. We'll explore writing your own functions in future lessons.

...
  |===========================================================================================================================================================================================================                                           |  83%
| One more function related to creating sequences of numbers is rep(), which stands for 'replicate'. Let's look at a few uses.

...
  |======================================================================================================================================================================================================================                                |  87%
| If we're interested in creating a vector that contains 40 zeros, we can use rep(0, times = 40). Try it out.

> rep(0,times=40)
 [1] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

| You are quite good my friend!
  |=================================================================================================================================================================================================================================                     |  91%
| If instead we want our vector to contain 10 repetitions of the vector (0, 1, 2), we can do rep(c(0, 1, 2), times = 10). Go ahead.

> rep()(0,1,2),times=10)
Error: unexpected ',' in "rep()(0,1,2),"
> rep((0,1,2),times=10)
Error: unexpected ',' in "rep((0,"
> rep(c(0,1,2),times=10)
 [1] 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2

| You nailed it! Good job!
  |===========================================================================================================================================================================================================================================           |  96%
| Finally, let's say that rather than repeating the vector (0, 1, 2) over and over again, we want our vector to contain 10 zeros, then 10 ones, then 10 twos. We can do this with the `each` argument. Try rep(c(0, 1, 2), each = 10).

> rep(c(0,1,2),each=10)
 [1] 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2

| That's correct!
  |======================================================================================================================================================================================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? pramod.voola@gmail.com
What is your assignment token? WULFH87V144VOoZN
Grade submission succeeded!

| Perseverance, that's the answer.

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers       4: Vectors                    5: Missing Values             6: Subsetting Vectors         7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply         11: vapply and tapply         12: Looking at Data           13: Simulation                14: Dates and Times           15: Base Graphics             

Selection: 4
  |                                                                                                                                                                                                                                                      |   0%

| The simplest and most common data structure in R is the vector.

...
  |======                                                                                                                                                                                                                                                |   3%
| Vectors come in two different flavors: atomic vectors and lists. An atomic vector contains exactly one data type, whereas a list may contain multiple data types. We'll explore atomic vectors further before we get to lists.

...
  |=============                                                                                                                                                                                                                                         |   5%
| In previous lessons, we dealt entirely with numeric vectors, which are one type of atomic vector. Other types of atomic vectors include logical, character, integer, and complex. In this lesson, we'll take a closer look at logical and character vectors.

...
  |===================                                                                                                                                                                                                                                   |   8%
| Logical vectors can contain the values TRUE, FALSE, and NA (for 'not available'). These values are generated as the result of logical 'conditions'. Let's experiment with some simple conditions.

...
  |==========================                                                                                                                                                                                                                            |  11%
| First, create a numeric vector num_vect that contains the values 0.5, 55, -10, and 6.

> num_vect <-c(0.5,55,-10,6)

| Excellent work!
  |================================                                                                                                                                                                                                                      |  13%
| Now, create a variable called tf that gets the result of num_vect < 1, which is read as 'num_vect is less than 1'.

> tf <-(num_vect<1)

| Give it another try. Or, type info() for more options.

| Use tf <- num_vect < 1 to assign the result of num_vect < 1 to a variable called tf.

> tf <- num_vect < 1

| You got it!
  |=======================================                                                                                                                                                                                                               |  16%
| What do you think tf will look like?

1: a vector of 4 logical values
2: a single logical value

Selection: 2

| Keep trying!

| Remember our lesson on vector arithmetic? The theme was that R performs many operations on an element-by-element basis. We called these 'vectorized' operations.

1: a vector of 4 logical values
2: a single logical value

Selection: 1

| You got it right!
  |=============================================                                                                                                                                                                                                         |  18%
| Print the contents of tf now.

> tf
[1]  TRUE FALSE  TRUE FALSE

| You nailed it! Good job!
  |====================================================                                                                                                                                                                                                  |  21%
| The statement num_vect < 1 is a condition and tf tells us whether each corresponding element of our numeric vector num_vect satisfies this condition.

...
  |==========================================================                                                                                                                                                                                            |  24%
| The first element of num_vect is 0.5, which is less than 1 and therefore the statement 0.5 < 1 is TRUE. The second element of num_vect is 55, which is greater than 1, so the statement 55 < 1 is FALSE. The same logic applies for the third and fourth
| elements.

...
  |=================================================================                                                                                                                                                                                     |  26%
| Let's try another. Type num_vect >= 6 without assigning the result to a new variable.

> num_vect >= 6
[1] FALSE  TRUE FALSE  TRUE

| You're the best!
  |=======================================================================                                                                                                                                                                               |  29%
| This time, we are asking whether each individual element of num_vect is greater than OR equal to 6. Since only 55 and 6 are greater than or equal to 6, the second and fourth elements of the result are TRUE and the first and third elements are FALSE.

...
  |==============================================================================                                                                                                                                                                        |  32%
| The `<` and `>=` symbols in these examples are called 'logical operators'. Other logical operators include `>`, `<=`, `==` for exact equality, and `!=` for inequality.

...
  |====================================================================================                                                                                                                                                                  |  34%
| If we have two logical expressions, A and B, we can ask whether at least one is TRUE with A | B (logical 'or' a.k.a. 'union') or whether they are both TRUE with A & B (logical 'and' a.k.a. 'intersection'). Lastly, !A is the negation of A and is TRUE
| when A is FALSE and vice versa.

...
  |===========================================================================================                                                                                                                                                           |  37%
| It's a good idea to spend some time playing around with various combinations of these logical operators until you get comfortable with their use. We'll do a few examples here to get you started.

...
  |=================================================================================================                                                                                                                                                     |  39%
| Try your best to predict the result of each of the following statements. You can use pencil and paper to work them out if it's helpful. If you get stuck, just guess and you've got a 50% chance of getting the right answer!

...
  |========================================================================================================                                                                                                                                              |  42%
| (3 > 5) & (4 == 4)

1: TRUE
2: FALSE

Selection: 1

| That's not exactly what I'm looking for. Try again.

| Break this problem down into 2 pieces. The `&` in the middle states that BOTH pieces are TRUE. Your job is to figure out if that is an accurate statement. If so, the entire condition is TRUE. If not, it's FALSE.

1: FALSE
2: TRUE

Selection: 2

| One more time. You can do it!

| Break this problem down into 2 pieces. The `&` in the middle states that BOTH pieces are TRUE. Your job is to figure out if that is an accurate statement. If so, the entire condition is TRUE. If not, it's FALSE.

1: TRUE
2: FALSE

Selection: 2

| Perseverance, that's the answer.
  |==============================================================================================================                                                                                                                                        |  45%
| (TRUE == TRUE) | (TRUE == FALSE)

1: FALSE
2: TRUE

Selection: 2

| You got it right!
  |=====================================================================================================================                                                                                                                                 |  47%
| ((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)

1: FALSE
2: TRUE

Selection: 2

| You are really on a roll!
  |===========================================================================================================================                                                                                                                           |  50%
| Don't worry if you found these to be tricky. They're supposed to be. Working with logical statements in R takes practice, but your efforts will be rewarded in future lessons (e.g. subsetting and control structures).

...
  |=================================================================================================================================                                                                                                                     |  53%
| Character vectors are also very common in R. Double quotes are used to distinguish character objects, as in the following example.

...
  |========================================================================================================================================                                                                                                              |  55%
| Create a character vector that contains the following words: "My", "name", "is". Remember to enclose each word in its own set of double quotes, so that R knows they are character strings. Store the vector in a variable called my_char.

> my_char <- c("My","Name","is")

| Almost! Try again. Or, type info() for more options.

| Type my_char <- c("My", "name", "is") to create a new variable called my_char that contains a character vector of length 3. Make sure that the commas separating the words are OUTSIDE of the double quotes, or else R thinks the commas are part of the
| words.

> my_char <- c("My","name","is")

| All that hard work is paying off!
  |==============================================================================================================================================                                                                                                        |  58%
| Print the contents of my_char to see what it looks like.

> my_char
[1] "My"   "name" "is"  

| All that practice is paying off!
  |=====================================================================================================================================================                                                                                                 |  61%
| Right now, my_char is a character vector of length 3. Let's say we want to join the elements of my_char together into one continuous character string (i.e. a character vector of length 1). We can do this using the paste() function.

...
  |===========================================================================================================================================================                                                                                           |  63%
| Type paste(my_char, collapse = " ") now. Make sure there's a space between the double quotes in the `collapse` argument. You'll see why in a second.

> paste(my_char, collapse = " ")
[1] "My name is"

| All that hard work is paying off!
  |==================================================================================================================================================================                                                                                    |  66%
| The `collapse` argument to the paste() function tells R that when we join together the elements of the my_char character vector, we'd like to separate them with single spaces.

...
  |========================================================================================================================================================================                                                                              |  68%
| It seems that we're missing something.... Ah, yes! Your name!

...
  |===============================================================================================================================================================================                                                                       |  71%
| To add (or 'concatenate') your name to the end of my_char, use the c() function like this: c(my_char, "your_name_here"). Place your name in double quotes where I've put "your_name_here". Try it now, storing the result in a new variable called my_name.

> my_name <- c(my_char, "pramod")

| Great job!
  |=====================================================================================================================================================================================                                                                 |  74%
| Take a look at the contents of my_name.

> my_name
[1] "My"     "name"   "is"     "pramod"

| You nailed it! Good job!
  |============================================================================================================================================================================================                                                          |  76%
| Now, use the paste() function once more to join the words in my_name together into a single character string. Don't forget to say collapse = " "!

> paste(my_name,collapse= " ")
[1] "My name is pramod"

| All that hard work is paying off!
  |==================================================================================================================================================================================================                                                    |  79%
| In this example, we used the paste() function to collapse the elements of a single character vector. paste() can also be used to join the elements of multiple character vectors.

...
  |=========================================================================================================================================================================================================                                             |  82%
| In the simplest case, we can join two character vectors that are each of length 1 (i.e. join two words). Try paste("Hello", "world!", sep = " "), where the `sep` argument tells R that we want to separate the joined elements with a single space.

> 
> paste("Hello", "world!", sep = " ")
[1] "Hello world!"

| You are amazing!
  |===============================================================================================================================================================================================================                                       |  84%
| For a slightly more complicated example, we can join two vectors, each of length 3. Use paste() to join the integer vector 1:3 with the character vector c("X", "Y", "Z"). This time, use sep = "" to leave no space between the joined elements.

> past(1:3,c("X","Y","Z"),sep = "")
Error in past(1:3, c("X", "Y", "Z"), sep = "") : 
  could not find function "past"
> paste(1:3,c("X","Y","Z"),sep = "")
[1] "1X" "2Y" "3Z"

| You got it!
  |======================================================================================================================================================================================================================                                |  87%
| What do you think will happen if our vectors are of different length? (Hint: we talked about this in a previous lesson.)

...
  |============================================================================================================================================================================================================================                          |  89%
| Vector recycling! Try paste(LETTERS, 1:4, sep = "-"), where LETTERS is a predefined variable in R containing a character vector of all 26 letters in the English alphabet.

> paste(LETTERS,1:4,sep="-")
 [1] "A-1" "B-2" "C-3" "D-4" "E-1" "F-2" "G-3" "H-4" "I-1" "J-2" "K-3" "L-4" "M-1" "N-2" "O-3" "P-4" "Q-1" "R-2" "S-3" "T-4" "U-1" "V-2" "W-3" "X-4" "Y-1" "Z-2"

| That's correct!
  |===================================================================================================================================================================================================================================                   |  92%
| Since the character vector LETTERS is longer than the numeric vector 1:4, R simply recycles, or repeats, 1:4 until it matches the length of LETTERS.

...
  |=========================================================================================================================================================================================================================================             |  95%
| Also worth noting is that the numeric vector 1:4 gets 'coerced' into a character vector by the paste() function.

...
  |================================================================================================================================================================================================================================================      |  97%
| We'll discuss coercion in another lesson, but all it really means is that the numbers 1, 2, 3, and 4 in the output above are no longer numbers to R, but rather characters "1", "2", "3", and "4".

...
  |======================================================================================================================================================================================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: No
2: Yes

Selection: 2
What is your email address? pramod.voola@gmail.com
What is your assignment token? dfA7t3u2LT6sKkJL
Grade submission succeeded!

| You are really on a roll!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers       4: Vectors                    5: Missing Values             6: Subsetting Vectors         7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply         11: vapply and tapply         12: Looking at Data           13: Simulation                14: Dates and Times           15: Base Graphics             

Selection: 5
  |                                                                                                                                                                                                                                                      |   0%

| Missing values play an important role in statistics and data analysis. Often, missing values must not be ignored, but rather they should be carefully studied to see if there's an underlying pattern or cause for their missingness.

...
  |============                                                                                                                                                                                                                                          |   5%
| In R, NA is used to represent any value that is 'not available' or 'missing' (in the statistical sense). In this lesson, we'll explore missing values further.

...
  |=========================                                                                                                                                                                                                                             |  10%
| Any operation involving NA generally yields NA as the result. To illustrate, let's create a vector c(44, NA, 5, NA) and assign it to a variable x.

> x <- c(44,NA,5,NA)

| Keep up the great work!
  |=====================================                                                                                                                                                                                                                 |  15%
| Now, let's multiply x by 3.

> x*3
[1] 132  NA  15  NA

| That's correct!
  |=================================================                                                                                                                                                                                                     |  20%
| Notice that the elements of the resulting vector that correspond with the NA values in x are also NA.

...
  |==============================================================                                                                                                                                                                                        |  25%
| To make things a little more interesting, lets create a vector containing 1000 draws from a standard normal distribution with y <- rnorm(1000).

> y <- rnorm(1000)

| You got it!
  |==========================================================================                                                                                                                                                                            |  30%
| Next, let's create a vector containing 1000 NAs with z <- rep(NA, 1000).

> z <- rep(NA,1000)

| Perseverance, that's the answer.
  |======================================================================================                                                                                                                                                                |  35%
| Finally, let's select 100 elements at random from these 2000 values (combining y and z) such that we don't know how many NAs we'll wind up with or what positions they'll occupy in our final vector -- my_data <- sample(c(y, z), 100).

> my_data <-sample(c(y,z),100)

| All that hard work is paying off!
  |==================================================================================================                                                                                                                                                    |  40%
| Let's first ask the question of where our NAs are located in our data. The is.na() function tells us whether each element of a vector is NA. Call is.na() on my_data and assign the result to my_na.

> is.na(my_data)
  [1] FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE
 [42]  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE
 [83]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE

| Almost! Try again. Or, type info() for more options.

| Assign the result of is.na(my_data) to the variable my_na.

> my_na <- is.na(my_data)

| You're the best!
  |===============================================================================================================                                                                                                                                       |  45%
| Now, print my_na to see what you came up with.

> my_na
  [1] FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE
 [42]  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE
 [83]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE

| You got it right!
  |===========================================================================================================================                                                                                                                           |  50%
| Everywhere you see a TRUE, you know the corresponding element of my_data is NA. Likewise, everywhere you see a FALSE, you know the corresponding element of my_data is one of our random draws from the standard normal distribution.

...y
  |=======================================================================================================================================                                                                                                               |  55%
| In our previous discussion of logical operators, we introduced the `==` operator as a method of testing for equality between two objects. So, you might think the expression my_data == NA yields the same results as is.na(). Give it a try.

> y
   [1]  0.339149913  0.272258443 -1.820482319 -0.230129027  0.551355901  1.071680270  1.127017873  1.134052387  1.691423201  0.153917096 -0.813938539  1.099211458 -1.315802348 -1.999698724 -0.995791161 -1.996506220  1.715279069 -1.414942067 -0.116853984
  [20]  0.278209372  1.095703359  0.812375581  1.514310413  0.061598652 -0.797381233  0.447857871 -0.848951486 -0.031753045 -0.405867853  0.041146422  1.126037010 -0.119007909 -1.331216854  2.918390091  0.513053404 -0.419808282 -0.070342605  0.325528531
  [39] -0.877133768 -0.546271082  0.831807547 -1.224348133  0.968257946  0.178752396  0.790680659 -0.710332413  1.511643877  0.475771958  1.347301666 -1.016309365  0.824454299 -0.559615460 -0.117789092  2.137526292  0.438264289  0.893811362  0.293121356
  [58]  0.213057127 -0.456405775  0.359554054  0.225098684 -1.338073657  1.661315038 -0.300515964 -0.195872390 -1.154747179  0.279881386 -1.035532666  1.167148054  0.805011430  1.207399429  0.305308106 -0.770195894  0.417327982  0.812040935 -0.473170693
  [77]  0.319585321  0.110813868 -0.034924481 -0.283080087 -0.735802449 -1.590961238 -0.582044384  0.191532789  1.926369406 -1.428961358 -0.815825930  0.153070105  0.335925840  0.182231419  1.237521632  1.430703797  2.308298036  0.400212903 -0.383501357
  [96] -1.586549160 -0.067547540 -0.659974257  2.710822998 -1.577349152  0.686527576  0.246418135 -0.980652520 -0.253162069 -0.536728682  0.231706701 -0.176470929 -0.359935876  1.282986452 -0.320036447  1.689766176 -0.739448125  1.316096144  0.316768262
 [115]  0.970498549 -1.461045773 -1.610459187  0.408796088  1.799648191  1.140925249  0.529499034  0.081130660  0.193338215 -0.703399534 -1.303478280 -0.125638646 -0.874751849 -0.156188227 -1.578170064  0.811822044  0.806473595  0.580382742  1.762979707
 [134]  0.361084463  0.064811943  0.088937256 -0.229906066  1.106289658  1.059996445 -0.442823222 -0.265213711  0.089163136 -1.594166841  0.144056315  0.332966723 -0.378750001  1.038057111 -1.586137971  0.596401939 -1.558021041 -0.824883994  0.744706941
 [153] -0.954885244 -1.378992822 -0.342010368  0.750189072 -0.224373521 -1.448804716 -0.803324448 -1.765105177 -0.294286342 -0.555532113  0.006998827  1.995423074 -1.730111274 -1.616403536  1.686150998 -1.805519095 -0.025962602  0.779510132  1.415620368
 [172] -0.119793916  1.049546839  2.592219276  0.689908259 -0.476563256  1.830081941  0.230525847  1.056181555 -0.158832525  0.210665444  0.819230065  0.973883253 -1.212371510  0.550452911  0.578765885  0.355610434  0.583152748  1.823275931  0.623972556
 [191] -0.282897311  0.900120874 -1.072041641  0.233296438  1.973211408  1.411517659  0.721821208  1.145637542  1.727765438 -0.578675825 -0.118738221 -0.225848478 -0.395127286 -0.058972291  0.746400255  0.642547164  0.850567058  0.246971938 -0.828102658
 [210]  0.428709101  0.195735701  0.154505663  0.421197343  0.842523428 -1.203003519 -0.556341430 -1.174678611  1.406135168  0.561213026  0.864840489 -0.569071036  1.338309380 -0.846972649  0.399952639 -0.688274541 -0.259409556  0.386159115 -0.018187447
 [229]  1.939689857  1.229213628 -1.539623523 -3.006610713 -0.126813422  1.622482144 -0.763738487 -1.269256554 -3.826032900  0.578962528  0.320242333 -1.020390355  0.029491674 -1.777113284 -0.421727025 -1.177655099 -1.092411902  2.338240800 -0.750422092
 [248] -0.179384242  2.098279710 -1.644606224 -0.266450129 -1.636563960  1.208132023 -0.850371919  0.718652566 -0.717932755 -0.264880661 -0.827235592 -0.427181269  1.149418278  1.066976375 -0.130930362  0.340092875 -0.919439255  1.278220395 -1.406386150
 [267]  0.887031472 -0.170095052 -0.529275781  0.328395602  1.925680904  2.158165747  0.439193508 -1.798817671 -0.949326284 -0.747457002 -0.431442271  0.414304422 -0.651612584  0.065286414 -0.076380196 -0.388284116 -1.305417847 -0.163846546 -0.737951046
 [286] -0.575420704  0.486373503  1.037935479 -0.037509498 -1.177001965 -0.810224393 -0.341547215  0.414697873 -0.734067823  0.055411261  1.055354889 -1.142103496 -0.744812967 -0.716695691  0.096812556 -1.010309905  1.281061708  0.149968145  1.343018982
 [305] -0.338770534 -0.945522157 -1.141959158 -0.775850522  0.485079410  1.431106671 -0.353915395  1.580968997  0.455720919 -0.362798522 -0.763058104  0.153382504  1.794033550  1.011464233 -0.187483202  0.086282101  1.440831338 -1.536119382 -0.445923481
 [324]  1.009075562  1.303042040  0.978176406  0.332760200 -2.022625024 -0.314531490 -0.946669824  0.758630090  0.428219927 -0.433371427 -0.568256791  0.015130626  0.219910580  1.023701343 -0.720108402  1.920433281  1.129215391 -0.914177208  0.697646343
 [343]  0.478991997  0.800201474 -0.727190883 -0.141191619  0.381319622  0.244430490 -0.554672586  0.692784654 -1.346893500  0.285855340 -1.016024294  0.013779012  0.538956115  0.512983239 -0.812117160  0.149148265  0.048649373  1.450941225  0.813965398
 [362]  0.913954050  0.244942718  0.775153206  0.802893463 -0.538318041 -0.183916470 -0.264558726 -1.003155819 -1.078118078  1.989691721  1.700287539 -0.384029148  0.088673967  0.723880232 -0.145099323 -0.293523144 -1.061216324  0.512890739 -0.024478376
 [381]  2.222028392 -0.265910934  1.826775041 -0.204590794 -0.721616772  0.577771845  0.695969329  1.471519112  0.596332530 -1.711839960 -0.497541589  0.269883288  3.106341599  0.948721002 -2.876496663 -0.625124859  0.794493124 -1.018151740  0.278896034
 [400] -0.393836405 -0.546711484  1.976701160  1.160535345 -1.272445435  0.868491058 -1.622244004 -1.102685489  0.784481990  0.403096657  0.633369428 -1.627031169 -0.050448176  1.255264913 -1.756880052 -1.357766494 -1.491131351  0.555140680  1.425742617
 [419] -0.215264363  0.604738156  1.016365994  1.527865887 -1.443359599  0.558040206 -1.463993215 -0.872050655  0.664584365  1.968523768  1.786400852  0.203143075 -0.210698445  0.886863819  0.834762873  0.067178496  1.072086226 -0.553423562 -0.505836280
 [438] -0.377486635 -1.443832959  1.674418154  0.151196291  1.424321928 -2.958855469 -0.707766953 -0.182889794 -0.722762630 -0.382073814 -0.537214254 -0.211067092  2.558330538 -0.784021257  0.841860792  0.084209252 -1.895477639  1.456368516 -1.270681400
 [457] -0.237438948 -1.542298705 -0.362677724 -0.617336598 -0.670509693 -0.158294228 -2.862579289  0.152766298  1.104159672  0.051902485  0.214802239 -0.064304254 -0.472606831  0.180517276  1.220981461  1.475002440  0.400562006  0.334514137 -0.521552951
 [476]  0.570831822  0.595841871 -1.621030425 -0.486264458  0.284921486  0.825781154  1.228556661  1.252461485 -0.194510445 -0.381525133  0.393099056  0.896341996  0.258698235  0.161555113  1.323419369 -0.161736560  0.661747510  0.676946710 -0.195574518
 [495]  0.647278848 -0.340971858  0.428346607 -0.129096711 -0.930569382  0.005768028  0.164226042 -2.088785816 -0.464289654 -1.090499721  1.307505159  0.112774071 -0.806177874  0.094441151  0.112443447  1.044614071 -0.522685065 -0.853244849  0.674164055
 [514]  0.143261009 -1.283472166  0.002359156  0.730042679 -0.289837131 -1.116988920  1.746566929  0.128689859  0.415060960  0.161517524  0.030502266  0.672285703  0.913817236  1.066781337  0.354065794  0.634201759  1.789988933  0.949984001  0.627786918
 [533] -1.508237758 -0.428316369  0.087926675  0.396566742  1.474885469 -0.302158252 -2.312361820  0.370810809  1.167211358  0.677458979 -1.271658473 -0.971289145 -0.405571410 -0.385902897 -1.100856496  1.097074446  0.341107969 -0.463252764  1.605313599
 [552]  1.707913542 -0.850189531 -0.133762270  1.872136302 -0.635212000  1.140808982 -0.753263177  0.084569095 -0.143355467  1.556918717 -1.108569335 -0.589308897 -0.111763502 -0.235997178 -0.562035013  0.167202798 -0.768476380 -1.259781246 -1.840272193
 [571]  0.599411152  1.622504732 -1.062205920  1.970949893  1.107525093  0.244275505  1.498181086 -0.764856960  1.245198514  2.056717470  0.520928022  1.335232024 -1.793932996 -1.260964737 -0.301637264 -2.467761289  0.248085872 -1.909506670 -0.542633622
 [590]  1.871392907 -0.642229825 -0.987461001 -1.576018056 -0.813032139 -0.980231620  1.542464130 -0.214648996  1.381919596  0.175715009 -1.272632369 -0.013822905  1.158593743 -0.801936920 -0.755368117  1.036333279  1.703879059 -0.426578205 -0.476740557
 [609]  1.598359950 -0.852535248 -0.649477112  0.946370033 -0.144963246  1.027375004 -1.146032814  1.108239957  0.864469940 -1.118732783  2.332637668 -0.055096653  0.114105161 -0.605899042  0.025377382  1.263881914 -2.148271511 -0.417931354 -0.611138323
 [628] -2.207233364  0.377168257  1.502042297  0.796973265  0.732028196  0.725386065 -0.305640323  0.377183226  2.651135616 -1.121273113 -1.427719177 -0.230921285  0.056551058  0.487204404 -0.182215209 -1.244326521  1.101321500 -0.481182315 -1.359765470
 [647] -1.431207135 -1.094776855  0.881455148  0.940968628 -0.109374571  1.109095473 -0.195158652  0.142062108  0.303733867 -0.325529629  0.285075231 -0.376281700  1.236179161 -0.592007340  0.976085202 -0.020655744  0.195206207 -1.214466296 -0.964370856
 [666] -0.244165789  1.803265006 -0.064515002 -0.641085305  0.659664800  1.318418577  0.152275068 -0.767242447 -0.954165225 -0.598569604 -0.163161335  0.630146154 -0.285926912 -0.634446465 -0.868552728  1.603043202  0.022850575 -1.113460575  1.327472690
 [685]  0.748730502 -0.044517262  0.324358695 -1.042173720 -0.331261588  0.056762978  1.164702296  0.560706789 -0.839171728 -1.131983846 -1.291912507 -0.886745215  0.172760101  2.226384224 -0.238827407  0.416490055  1.142894772 -0.042048278 -0.441433092
 [704] -1.000040127 -0.508670823  0.143956286  1.620910474  0.723673768 -2.028266336  0.435045901 -0.935191112  0.337909242  0.815921965 -0.600088527 -0.040465364  0.730698584  1.453504828  0.414701438  0.596519239 -1.217666381 -0.703294856  0.223814231
 [723] -0.976176687 -0.313111784  0.698623396  1.035115297 -0.863089495  1.319180750  0.116965635  0.570862298  0.041780164 -0.942646574 -0.585755683  0.100816720  0.727963707 -0.282936286  0.569158757  0.421577380 -0.369080464 -1.469019761 -0.164698512
 [742] -1.391249908 -0.251139004 -0.062390345 -0.258202304 -0.727957644  0.813422305  0.060053720 -1.330419383  1.116415075  1.889567268 -1.055026472 -0.638312141  2.047735251  0.860962509 -1.513138271 -2.079986403 -1.104739804 -1.071630012 -0.066239040
 [761] -0.652727752 -0.477426746 -0.997088966  0.912870094 -0.709602989  0.314383927 -1.023844242  0.595702984  1.234073963 -1.901787485  1.445919081  0.931025992 -1.693996139 -0.843400681  0.268637975  0.302226680  0.689772192  0.943938762  0.666650410
 [780] -1.310399819  0.581619186  0.755392841 -0.310160154  1.566626061 -0.370540473  1.636525945  1.176526992 -1.392308935  1.513318992  2.127660974 -0.351689889  0.841774766  0.593131956  0.113735960 -0.487402040 -2.482862354  0.191204138  1.072565123
 [799] -0.754533434  1.442695522 -0.170864838 -1.536442219 -1.201437882 -1.133855017  0.656710314  0.878409361 -0.289240230 -0.030296963  1.154137074  0.979718870  0.263705207 -0.412994034 -0.891130390  1.305360192  0.871590300  0.933863848  1.010293814
 [818] -1.771662649 -0.212679742 -0.072680072  1.554877210  0.107215847 -1.473445623  0.977589159 -0.202023392 -0.413076292  0.221288552  1.386746160 -0.457337217  1.001051635 -1.140779193 -1.720561815  1.514963514 -0.122015649  0.117994361  0.052308103
 [837]  0.254730164  0.087708660 -0.695786020  0.073438408 -0.023496444 -1.011481960  0.739231870 -1.675219966  1.295072259  0.720692282  0.302782416  0.557794211 -0.043277470  1.019270628  1.383886916  1.899528073 -1.963599014  1.175209479 -0.487415627
 [856]  1.932215680 -1.865618856  0.789657748 -0.160659763  0.301166153 -0.993225877 -1.641133184 -0.028795339 -0.832067304 -0.914953043  1.430708440 -0.267368756 -0.192944284  0.051141054 -0.245387493 -0.897900194 -0.671082473  1.532858706  0.080035594
 [875] -0.347506211  2.036555051 -1.362315149  0.371543593 -0.410209137 -0.684804238  0.194355733  0.103302218  0.706020586  0.097925669  1.574189176  0.653274610 -1.382850054  0.519028029 -1.556698335  0.996661264  0.913942698  0.222286203  0.827788875
 [894] -0.863103476 -0.156921629  0.376383391  0.805487331  1.157813399  0.151348206  0.253316324 -1.241540348  1.878699587  0.008049918 -0.688271564 -0.323191532 -0.349981442  0.802082533 -2.320993336 -0.940227921  0.375073022 -0.893760408  0.414369689
 [913]  0.152332861 -1.574398345 -0.770089226  0.794136555  0.788081055 -1.349801286 -0.814619760  2.626360498  0.150788495 -0.474833256  0.037221622  0.058767912  1.304011645 -0.894071879  1.627624456 -2.092823473 -0.964100497  0.808080679  0.124092649
 [932] -1.583118625 -0.306575136 -0.024507354  0.929663217 -1.131212033 -0.454081710  0.723033169  0.217950476 -1.219168181 -1.496823778  0.200408220  0.577282981  1.251125499  1.122884656 -1.140594790 -0.318449595  0.453900441  1.927385658 -0.977224220
 [951] -0.867191394 -1.273535266 -0.058086299 -0.605373557  0.676755428  0.656238913  1.756900829  1.284303843 -0.217886698 -0.363186813  0.428570778  1.582721611  0.952054582  2.096765806 -0.196367488 -0.022440162  1.086248253 -0.760285356  0.588407811
 [970] -0.007409072  1.053765760 -2.149755074  0.060298049 -1.370301159  1.740831827 -1.723291344  1.496414966  2.130562425 -0.332228126 -0.833890134 -0.278319854 -1.439723265 -0.147640664  1.614732679  0.293054625 -0.688271827  0.828488313 -0.199820618
 [989]  1.476790625 -1.739105457  1.186182467  0.874262521 -0.660970331  0.404002776 -1.625536826 -1.600483843  2.442268125  1.932060973  0.551924582 -0.036892445

| Keep trying! Or, type info() for more options.

| Try my_data == NA to see what happens.

> my_data == NA
  [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 [84] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

| That's a job well done!
  |====================================================================================================================================================                                                                                                  |  60%
| The reason you got a vector of all NAs is that NA is not really a value, but just a placeholder for a quantity that is not available. Therefore the logical expression is incomplete and R has no choice but to return a vector of the same length as my_data
| that contains all NAs.

...
  |================================================================================================================================================================                                                                                      |  65%
| Don't worry if that's a little confusing. The key takeaway is to be cautious when using logical expressions anytime NAs might creep in, since a single NA value can derail the entire thing.

...
  |============================================================================================================================================================================                                                                          |  70%
| So, back to the task at hand. Now that we have a vector, my_na, that has a TRUE for every NA and FALSE for every numeric value, we can compute the total number of NAs in our data.

...
  |========================================================================================================================================================================================                                                              |  75%
| The trick is to recognize that underneath the surface, R represents TRUE as the number 1 and FALSE as the number 0. Therefore, if we take the sum of a bunch of TRUEs and FALSEs, we get the total number of TRUEs.

...
  |=====================================================================================================================================================================================================                                                 |  80%
| Let's give that a try here. Call the sum() function on my_na to count the total number of TRUEs in my_na, and thus the total number of NAs in my_data. Don't assign the result to a new variable.

> sum(my_na)
[1] 56

| You are doing so well!
  |=================================================================================================================================================================================================================                                     |  85%
| Pretty cool, huh? Finally, let's take a look at the data to convince ourselves that everything 'adds up'. Print my_data to the console.

> my_data
  [1] -0.26645013          NA -0.36279852          NA          NA  0.83476287          NA  0.11373596 -1.10085650          NA          NA          NA          NA  0.31438393  1.03793548          NA          NA          NA          NA -0.73580245
 [21] -0.72276263          NA          NA  0.33914991          NA          NA          NA -0.26455873  0.08770866 -0.64108531  1.14080898  1.57418918          NA          NA          NA          NA          NA -1.99969872          NA          NA
 [41] -0.96437086          NA  0.16151752          NA          NA -1.90178748          NA -0.45640578 -0.53721425          NA          NA -0.04204828  2.03655505          NA  0.67416406          NA -0.59856960          NA          NA  0.81237558
 [61]          NA          NA          NA          NA  1.33830938  0.37154359 -0.14119162 -2.09282347          NA  1.03633328          NA -0.61113832  1.28430384          NA          NA          NA          NA          NA          NA -0.81211716
 [81]          NA          NA          NA  1.01636599 -1.15474718 -2.02262502 -0.26521371 -0.41307629  0.24427550          NA          NA -0.32319153          NA  0.28585534 -1.24432652  2.13752629          NA          NA          NA          NA

| You are really on a roll!
  |=============================================================================================================================================================================================================================                         |  90%
| Now that we've got NAs down pat, let's look at a second type of missing value -- NaN, which stands for 'not a number'. To generate NaN, try dividing (using a forward slash) 0 by 0 now.

> 0/0
[1] NaN

| Keep working like that and you'll get there!
  |==========================================================================================================================================================================================================================================            |  95%
| Let's do one more, just for fun. In R, Inf stands for infinity. What happens if you subtract Inf from Inf?

> inf - inf
Error: object 'inf' not found
> Inf-Inf
[1] NaN

| Nice work!
  |======================================================================================================================================================================================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? pramod.voola@gmail.com
What is your assignment token? jLCkpOvHnk4M8vyM
Grade submission succeeded!

| Great job!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers       4: Vectors                    5: Missing Values             6: Subsetting Vectors         7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply         11: vapply and tapply         12: Looking at Data           13: Simulation                14: Dates and Times           15: Base Graphics             

Selection: 6
  |                                                                                                                                                                                                                                                      |   0%

| In this lesson, we'll see how to extract elements from a vector based on some conditions that we specify.

...
  |======                                                                                                                                                                                                                                                |   3%
| For example, we may only be interested in the first 20 elements of a vector, or only the elements that are not NA, or only those that are positive or correspond to a specific variable of interest. By the end of this lesson, you'll know how to handle
| each of these scenarios.

...
  |=============                                                                                                                                                                                                                                         |   5%
| I've created for you a vector called x that contains a random ordering of 20 numbers (from a standard normal distribution) and 20 NAs. Type x now to see what it looks like.

> x
 [1]  0.25632855 -0.97415071          NA          NA  0.19686614          NA          NA          NA -0.12238501          NA  1.30751227          NA          NA -0.83577194          NA          NA          NA          NA  0.57324559 -1.62486906          NA
[22] -1.39703063 -1.26828311 -0.53427128          NA          NA  1.28669545 -0.77309258  0.08158407          NA          NA          NA -1.70817225 -0.29599710  0.21441678  0.43436729          NA  1.00948596  0.26004734          NA

| All that hard work is paying off!
  |===================                                                                                                                                                                                                                                   |   8%
| The way you tell R that you want to select some particular elements (i.e. a 'subset') from a vector is by placing an 'index vector' in square brackets immediately following the name of the vector.

...
  |=========================                                                                                                                                                                                                                             |  10%
| For a simple example, try x[1:10] to view the first ten elements of x.

> x[1:10]
 [1]  0.2563286 -0.9741507         NA         NA  0.1968661         NA         NA         NA -0.1223850         NA

| You nailed it! Good job!
  |================================                                                                                                                                                                                                                      |  13%
| Index vectors come in four different flavors -- logical vectors, vectors of positive integers, vectors of negative integers, and vectors of character strings -- each of which we'll cover in this lesson.

...
  |======================================                                                                                                                                                                                                                |  15%
| Let's start by indexing with logical vectors. One common scenario when working with real-world data is that we want to extract all elements of a vector that are not NA (i.e. missing data). Recall that is.na(x) yields a vector of logical values the same
| length as x, with TRUEs corresponding to NA values in x and FALSEs corresponding to non-NA values in x.

...
  |============================================                                                                                                                                                                                                          |  18%
| What do you think x[is.na(x)] will give you?

1: A vector with no NAs
2: A vector of all NAs
3: A vector of length 0
4: A vector of TRUEs and FALSEs

Selection: 1

| Not quite right, but keep trying.

| Remember that is.na(x) tells us where the NAs are in a vector. So if we subset x based on that, what do you expect to happen?

1: A vector of length 0
2: A vector with no NAs
3: A vector of all NAs
4: A vector of TRUEs and FALSEs

Selection: 4

| One more time. You can do it!

| Remember that is.na(x) tells us where the NAs are in a vector. So if we subset x based on that, what do you expect to happen?

1: A vector of length 0
2: A vector of all NAs
3: A vector with no NAs
4: A vector of TRUEs and FALSEs

Selection: 2

| Nice work!
  |==================================================                                                                                                                                                                                                    |  21%
| Prove it to yourself by typing x[is.na(x)].

> x[is.na(x)]
 [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

| That's correct!
  |=========================================================                                                                                                                                                                                             |  23%
| Recall that `!` gives us the negation of a logical expression, so !is.na(x) can be read as 'is not NA'. Therefore, if we want to create a vector called y that contains all of the non-NA values from x, we can use y <- x[!is.na(x)]. Give it a try.

> y <- x[!is.na(x)]

| Keep up the great work!
  |===============================================================                                                                                                                                                                                       |  26%
| Print y to the console.

> y
 [1]  0.25632855 -0.97415071  0.19686614 -0.12238501  1.30751227 -0.83577194  0.57324559 -1.62486906 -1.39703063 -1.26828311 -0.53427128  1.28669545 -0.77309258  0.08158407 -1.70817225 -0.29599710  0.21441678  0.43436729  1.00948596  0.26004734

| Keep up the great work!
  |=====================================================================                                                                                                                                                                                 |  28%
| Now that we've isolated the non-missing values of x and put them in y, we can subset y as we please.

...
  |============================================================================                                                                                                                                                                          |  31%
| Recall that the expression y > 0 will give us a vector of logical values the same length as y, with TRUEs corresponding to values of y that are greater than zero and FALSEs corresponding to values of y that are less than or equal to zero. What do you
| think y[y > 0] will give you?

1: A vector of all the positive elements of y
2: A vector of length 0
3: A vector of all NAs
4: A vector of all the negative elements of y
5: A vector of TRUEs and FALSEs

Selection: 5

| You almost had it, but not quite. Try again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you think y[y > 0] will return?

1: A vector of all NAs
2: A vector of TRUEs and FALSEs
3: A vector of all the negative elements of y
4: A vector of length 0
5: A vector of all the positive elements of y

Selection: 1

| Not quite, but you're learning! Try again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you think y[y > 0] will return?

1: A vector of all NAs
2: A vector of all the positive elements of y
3: A vector of TRUEs and FALSEs
4: A vector of length 0
5: A vector of all the negative elements of y

Selection: 2

| You are quite good my friend!
  |==================================================================================                                                                                                                                                                    |  33%
| Type y[y > 0] to see that we get all of the positive elements of y, which are also the positive elements of our original vector x.

> 
> y[y>0]
 [1] 0.25632855 0.19686614 1.30751227 0.57324559 1.28669545 0.08158407 0.21441678 0.43436729 1.00948596 0.26004734

| Excellent job!
  |========================================================================================                                                                                                                                                              |  36%
| You might wonder why we didn't just start with x[x > 0] to isolate the positive elements of x. Try that now to see why.

> x[x>0]
 [1] 0.25632855         NA         NA 0.19686614         NA         NA         NA         NA 1.30751227         NA         NA         NA         NA         NA         NA 0.57324559         NA         NA         NA 1.28669545 0.08158407         NA
[23]         NA         NA 0.21441678 0.43436729         NA 1.00948596 0.26004734         NA

| Perseverance, that's the answer.
  |===============================================================================================                                                                                                                                                       |  38%
| Since NA is not a value, but rather a placeholder for an unknown quantity, the expression NA > 0 evaluates to NA. Hence we get a bunch of NAs mixed in with our positive numbers when we do this.

...
  |=====================================================================================================                                                                                                                                                 |  41%
| Combining our knowledge of logical operators with our new knowledge of subsetting, we could do this -- x[!is.na(x) & x > 0]. Try it out.

> x[!is.na(x) & x >0]
 [1] 0.25632855 0.19686614 1.30751227 0.57324559 1.28669545 0.08158407 0.21441678 0.43436729 1.00948596 0.26004734

| All that hard work is paying off!
  |===========================================================================================================                                                                                                                                           |  44%
| In this case, we request only values of x that are both non-missing AND greater than zero.

...
  |==================================================================================================================                                                                                                                                    |  46%
| I've already shown you how to subset just the first ten values of x using x[1:10]. In this case, we're providing a vector of positive integers inside of the square brackets, which tells R to return only the elements of x numbered 1 through 10.

...
  |========================================================================================================================                                                                                                                              |  49%
| Many programming languages use what's called 'zero-based indexing', which means that the first element of a vector is considered element 0. R uses 'one-based indexing', which (you guessed it!) means the first element of a vector is considered element 1.

...
  |==============================================================================================================================                                                                                                                        |  51%
| Can you figure out how we'd subset the 3rd, 5th, and 7th elements of x? Hint -- Use the c() function to specify the element numbers as a numeric vector.

> ?c(1)
Error in .helpForCall(topicExpr, parent.frame()) : 
  no documentation for function ‘c’ and signature ‘x = "numeric"’
In addition: Warning message:
In .helpForCall(topicExpr, parent.frame()) :
  no method defined for function ‘c’ and signature ‘x = "numeric"’
> ?c()
Error in .helpForCall(topicExpr, parent.frame()) : 
  no documentation for function ‘c’ and signature ‘x = "missing"’
In addition: Warning message:
In .helpForCall(topicExpr, parent.frame()) :
  no method defined for function ‘c’ and signature ‘x = "missing"’
> c(x[3],x[5],x[7])
[1]        NA 0.1968661        NA

| Give it another try. Or, type info() for more options.

| Create a vector of indexes with c(3, 5, 7), then put that inside of the square brackets.

> x[c(3,5,7)]
[1]        NA 0.1968661        NA

| You are doing so well!
  |====================================================================================================================================                                                                                                                  |  54%
| It's important that when using integer vectors to subset our vector x, we stick with the set of indexes {1, 2, ..., 40} since x only has 40 elements. What happens if we ask for the zeroth element of x (i.e. x[0])? Give it a try.

> x[0]
numeric(0)

| That's the answer I was looking for.
  |===========================================================================================================================================                                                                                                           |  56%
| As you might expect, we get nothing useful. Unfortunately, R doesn't prevent us from doing this. What if we ask for the 3000th element of x? Try it out.

> x[300]
[1] NA

| You're close...I can feel it! Try it again. Or, type info() for more options.

| Request the 3000th element of x (which does not exist) with x[3000].

> x[3000]
[1] NA

| All that practice is paying off!
  |=================================================================================================================================================                                                                                                     |  59%
| Again, nothing useful, but R doesn't prevent us from asking for it. This should be a cautionary tale. You should always make sure that what you are asking for is within the bounds of the vector you're working with.

...
  |=======================================================================================================================================================                                                                                               |  62%
| What if we're interested in all elements of x EXCEPT the 2nd and 10th? It would be pretty tedious to construct a vector containing all numbers 1 through 40 EXCEPT 2 and 10.

...
  |==============================================================================================================================================================                                                                                        |  64%
| Luckily, R accepts negative integer indexes. Whereas x[c(2, 10)] gives us ONLY the 2nd and 10th elements of x, x[c(-2, -10)] gives us all elements of x EXCEPT for the 2nd and 10 elements.  Try x[c(-2, -10)] now to see this.

> x[c(-2,-10)]
 [1]  0.25632855          NA          NA  0.19686614          NA          NA          NA -0.12238501  1.30751227          NA          NA -0.83577194          NA          NA          NA          NA  0.57324559 -1.62486906          NA -1.39703063 -1.26828311
[22] -0.53427128          NA          NA  1.28669545 -0.77309258  0.08158407          NA          NA          NA -1.70817225 -0.29599710  0.21441678  0.43436729          NA  1.00948596  0.26004734          NA

| Great job!
  |====================================================================================================================================================================                                                                                  |  67%
| A shorthand way of specifying multiple negative numbers is to put the negative sign out in front of the vector of positive numbers. Type x[-c(2, 10)] to get the exact same result.

> x[-c(2,10)]
 [1]  0.25632855          NA          NA  0.19686614          NA          NA          NA -0.12238501  1.30751227          NA          NA -0.83577194          NA          NA          NA          NA  0.57324559 -1.62486906          NA -1.39703063 -1.26828311
[22] -0.53427128          NA          NA  1.28669545 -0.77309258  0.08158407          NA          NA          NA -1.70817225 -0.29599710  0.21441678  0.43436729          NA  1.00948596  0.26004734          NA

| Your dedication is inspiring!
  |==========================================================================================================================================================================                                                                            |  69%
| So far, we've covered three types of index vectors -- logical, positive integer, and negative integer. The only remaining type requires us to introduce the concept of 'named' elements.

...
  |=================================================================================================================================================================================                                                                     |  72%
| Create a numeric vector with three named elements using vect <- c(foo = 11, bar = 2, norf = NA).

> vect <-c(foo=11,bar=2, norf=NA)

| Nice work!
  |=======================================================================================================================================================================================                                                               |  74%
| When we print vect to the console, you'll see that each element has a name. Try it out.

> vect
 foo  bar norf 
  11    2   NA 

| You are doing so well!
  |=============================================================================================================================================================================================                                                         |  77%
| We can also get the names of vect by passing vect as an argument to the names() function. Give that a try.

> names(vect)
[1] "foo"  "bar"  "norf"

| That's correct!
  |====================================================================================================================================================================================================                                                  |  79%
| Alternatively, we can create an unnamed vector vect2 with c(11, 2, NA). Do that now.

> vect2 <- c(11,2,NA)

| All that practice is paying off!
  |==========================================================================================================================================================================================================                                            |  82%
| Then, we can add the `names` attribute to vect2 after the fact with names(vect2) <- c("foo", "bar", "norf"). Go ahead.

> names(vect2)
NULL

| You're close...I can feel it! Try it again. Or, type info() for more options.

| Add names to vect2 with names(vect2) <- c("foo", "bar", "norf").

> names(vect2) <-c("foo","bar","norf")

| You are quite good my friend!
  |================================================================================================================================================================================================================                                      |  85%
| Now, let's check that vect and vect2 are the same by passing them as arguments to the identical() function.

> vect2
 foo  bar norf 
  11    2   NA 

| That's not exactly what I'm looking for. Try again. Or, type info() for more options.

| The identical() function tells us if its first two arguments are, well, identical.

> identical(vect,vect2)
[1] TRUE

| All that practice is paying off!
  |======================================================================================================================================================================================================================                                |  87%
| Indeed, vect and vect2 are identical named vectors.

...
  |=============================================================================================================================================================================================================================                         |  90%
| Now, back to the matter of subsetting a vector by named elements. Which of the following commands do you think would give us the second element of vect?

1: vect["2"]
2: vect["bar"]
3: vect[bar]

Selection: 2

| Excellent work!
  |===================================================================================================================================================================================================================================                   |  92%
| Now, try it out.

> vect["bar"]
bar 
  2 

| You nailed it! Good job!
  |=========================================================================================================================================================================================================================================             |  95%
| Likewise, we can specify a vector of names with vect[c("foo", "bar")]. Try it out.

> vect[c("foo","bar")]
foo bar 
 11   2 

| You are quite good my friend!
  |================================================================================================================================================================================================================================================      |  97%
| Now you know all four methods of subsetting data from vectors. Different approaches are best in different scenarios and when in doubt, try it out!

...
  |======================================================================================================================================================================================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? pramod.voola@gmail.com
What is your assignment token? j5OlQUK6KXjIbXwf
Grade submission succeeded!

| You're the best!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers       4: Vectors                    5: Missing Values             6: Subsetting Vectors         7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply         11: vapply and tapply         12: Looking at Data           13: Simulation                14: Dates and Times           15: Base Graphics             

Selection: 7
  |                                                                                                                                                                                                                                                      |   0%

| In this lesson, we'll cover matrices and data frames. Both represent 'rectangular' data types, meaning that they are used to store tabular data, with rows and columns.

...
  |=======                                                                                                                                                                                                                                               |   3%
| The main difference, as you'll see, is that matrices can only contain a single class of data, while data frames can consist of many different classes of data.

...
  |==============                                                                                                                                                                                                                                        |   6%
| Let's create a vector containing the numbers 1 through 20 using the `:` operator. Store the result in a variable called my_vector.

> my_vect <- 1:20

| That's not the answer I was looking for, but try again. Or, type info() for more options.

| You learned about the `:` operator in the lesson on sequences. If you wanted to create a vector containing the numbers 1, 2, and 3 (in that order), you could use either c(1, 2, 3) or 1:3. In this case, we want the numbers 1 through 20 stored in a
| variable called my_vector. Also, remember that you don't need the c() function when using `:`.

> my_vector <- 1:20

| That's the answer I was looking for.
  |====================                                                                                                                                                                                                                                  |   8%
| View the contents of the vector you just created.

> my_vector
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| All that hard work is paying off!
  |===========================                                                                                                                                                                                                                           |  11%
| The dim() function tells us the 'dimensions' of an object. What happens if we do dim(my_vector)? Give it a try.

> dim(my_vector)
NULL

| Excellent job!
  |==================================                                                                                                                                                                                                                    |  14%
| Clearly, that's not very helpful! Since my_vector is a vector, it doesn't have a `dim` attribute (so it's just NULL), but we can find its length using the length() function. Try that now.

> length(my_vector)
[1] 20

| You're the best!
  |=========================================                                                                                                                                                                                                             |  17%
| Ah! That's what we wanted. But, what happens if we give my_vector a `dim` attribute? Let's give it a try. Type dim(my_vector) <- c(4, 5).

> dim(my_vector) <- c(4,5)

| Your dedication is inspiring!
  |================================================                                                                                                                                                                                                      |  19%
| It's okay if that last command seemed a little strange to you. It should! The dim() function allows you to get OR set the `dim` attribute for an R object. In this case, we assigned the value c(4, 5) to the `dim` attribute of my_vector.

...
  |=======================================================                                                                                                                                                                                               |  22%
| Use dim(my_vector) to confirm that we've set the `dim` attribute correctly.

> dim(my_vector)
[1] 4 5

| You are really on a roll!
  |==============================================================                                                                                                                                                                                        |  25%
| Another way to see this is by calling the attributes() function on my_vector. Try it now.

> attributes(my_vector)
$dim
[1] 4 5


| You are quite good my friend!
  |====================================================================                                                                                                                                                                                  |  28%
| Just like in math class, when dealing with a 2-dimensional object (think rectangular table), the first number is the number of rows and the second is the number of columns. Therefore, we just gave my_vector 4 rows and 5 columns.

...
  |===========================================================================                                                                                                                                                                           |  31%
| But, wait! That doesn't sound like a vector any more. Well, it's not. Now it's a matrix. View the contents of my_vector now to see what it looks like.

> my_vector
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    5    9   13   17
[2,]    2    6   10   14   18
[3,]    3    7   11   15   19
[4,]    4    8   12   16   20

| You nailed it! Good job!
  |==================================================================================                                                                                                                                                                    |  33%
| Now, let's confirm it's actually a matrix by using the class() function. Type class(my_vector) to see what I mean.

> class(my_vector)
[1] "matrix" "array" 

| Great job!
  |=========================================================================================                                                                                                                                                             |  36%
| Sure enough, my_vector is now a matrix. We should store it in a new variable that helps us remember what it is. Store the value of my_vector in a new variable called my_matrix.

> my_matrix <- my_vector

| Keep working like that and you'll get there!
  |================================================================================================                                                                                                                                                      |  39%
| The example that we've used so far was meant to illustrate the point that a matrix is simply an atomic vector with a dimension attribute. A more direct method of creating the same matrix uses the matrix() function.

...
  |======================================================================================================                                                                                                                                                |  42%
| Bring up the help file for the matrix() function now using the `?` function.

> ?matrix()

| Not quite! Try again. Or, type info() for more options.

| The command ?matrix will do the trick.

> ?matrix

| Nice work!
  |=============================================================================================================                                                                                                                                         |  44%
| Now, look at the documentation for the matrix function and see if you can figure out how to create a matrix containing the same numbers (1-20) and dimensions (4 rows, 5 columns) by calling the matrix() function. Store the result in a variable called
| my_matrix2.

> 
> ?matrix
> my_matrix2 <- matrix(data=1:20,nrow=4,ncol=5)

| Great job!
  |====================================================================================================================                                                                                                                                  |  47%
| Finally, let's confirm that my_matrix and my_matrix2 are actually identical. The identical() function will tell us if its first two arguments are the same. Try it out.

> identical(my_matrix,my_matrix2)
[1] TRUE

| Keep working like that and you'll get there!
  |===========================================================================================================================                                                                                                                           |  50%
| Now, imagine that the numbers in our table represent some measurements from a clinical experiment, where each row represents one patient and each column represents one variable for which measurements were taken.

...
  |==================================================================================================================================                                                                                                                    |  53%
| We may want to label the rows, so that we know which numbers belong to each patient in the experiment. One way to do this is to add a column to the matrix, which contains the names of all four people.

...
  |=========================================================================================================================================                                                                                                             |  56%
| Let's start by creating a character vector containing the names of our patients -- Bill, Gina, Kelly, and Sean. Remember that double quotes tell R that something is a character string. Store the result in a variable called patients.

> patients <- c("Bill","Gina","Kelly","Sean")

| You are really on a roll!
  |===============================================================================================================================================                                                                                                       |  58%
| Now we'll use the cbind() function to 'combine columns'. Don't worry about storing the result in a new variable. Just call cbind() with two arguments -- the patients vector and my_matrix.

> cbind(patients,my_matrix)
     patients                       
[1,] "Bill"   "1" "5" "9"  "13" "17"
[2,] "Gina"   "2" "6" "10" "14" "18"
[3,] "Kelly"  "3" "7" "11" "15" "19"
[4,] "Sean"   "4" "8" "12" "16" "20"

| You got it!
  |======================================================================================================================================================                                                                                                |  61%
| Something is fishy about our result! It appears that combining the character vector with our matrix of numbers caused everything to be enclosed in double quotes. This means we're left with a matrix of character strings, which is no good.

...
  |=============================================================================================================================================================                                                                                         |  64%
| If you remember back to the beginning of this lesson, I told you that matrices can only contain ONE class of data. Therefore, when we tried to combine a character vector with a numeric matrix, R was forced to 'coerce' the numbers to characters, hence
| the double quotes.

...
  |====================================================================================================================================================================                                                                                  |  67%
| This is called 'implicit coercion', because we didn't ask for it. It just happened. But why didn't R just convert the names of our patients to numbers? I'll let you ponder that question on your own.

...
  |===========================================================================================================================================================================                                                                           |  69%
| So, we're still left with the question of how to include the names of our patients in the table without destroying the integrity of our numeric data. Try the following -- my_data <- data.frame(patients, my_matrix)

> my_data <- data.frame(patient,my_matrix)
Error in data.frame(patient, my_matrix) : object 'patient' not found
> my_data <- data.frame(patients,my_matrix)

| Keep up the great work!
  |==================================================================================================================================================================================                                                                    |  72%
| Now view the contents of my_data to see what we've come up with.

> my_data
  patients X1 X2 X3 X4 X5
1     Bill  1  5  9 13 17
2     Gina  2  6 10 14 18
3    Kelly  3  7 11 15 19
4     Sean  4  8 12 16 20

| That's the answer I was looking for.
  |========================================================================================================================================================================================                                                              |  75%
| It looks like the data.frame() function allowed us to store our character vector of names right alongside our matrix of numbers. That's exactly what we were hoping for!

...
  |===============================================================================================================================================================================================                                                       |  78%
| Behind the scenes, the data.frame() function takes any number of arguments and returns a single object of class `data.frame` that is composed of the original objects.

...
  |======================================================================================================================================================================================================                                                |  81%
| Let's confirm this by calling the class() function on our newly created data frame.

> class(my_data)
[1] "data.frame"

| Your dedication is inspiring!
  |=============================================================================================================================================================================================================                                         |  83%
| It's also possible to assign names to the individual rows and columns of a data frame, which presents another possible way of determining which row of values in our table belongs to each patient.

...
  |====================================================================================================================================================================================================================                                  |  86%
| However, since we've already solved that problem, let's solve a different problem by assigning names to the columns of our data frame so that we know what type of measurement each column represents.

...
  |===========================================================================================================================================================================================================================                           |  89%
| Since we have six columns (including patient names), we'll need to first create a vector containing one element for each column. Create a character vector called cnames that contains the following values (in order) -- "patient", "age", "weight", "bp",
| "rating", "test".

> cname <-c("patient","age","weight","bp","rating","test")

| Not quite, but you're learning! Try again. Or, type info() for more options.

| Make sure all of the names are lowercase, surrounded by double quotes, and separated with commas. Don't forget to use the c() function.

> cnames <- c("patient","age","weight","bp","rating","test")

| You are really on a roll!
  |==================================================================================================================================================================================================================================                    |  92%
| Now, use the colnames() function to set the `colnames` attribute for our data frame. This is similar to the way we used the dim() function earlier in this lesson.

> 
> 
> colnames(my_data,cnames)
Error in is.data.frame(x) && do.NULL : invalid 'y' type in 'x && y'
> 
> 
> 
> 
> colnames(my_data) <- cnames

| You are quite good my friend!
  |========================================================================================================================================================================================================================================              |  94%
| Let's see if that got the job done. Print the contents of my_data.

> my_data
  patient age weight bp rating test
1    Bill   1      5  9     13   17
2    Gina   2      6 10     14   18
3   Kelly   3      7 11     15   19
4    Sean   4      8 12     16   20

| You are quite good my friend!
  |===============================================================================================================================================================================================================================================       |  97%
| In this lesson, you learned the basics of working with two very important and common data structures -- matrices and data frames. There's much more to learn and we'll be covering more advanced topics, particularly with respect to data frames, in future
| lessons.

...
  |======================================================================================================================================================================================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: No
2: Yes

Selection: 2
What is your email address? pramod.voola@gmail.com
What is your assignment token? uXn0gv2Vc9M3gLdL
Grade submission succeeded!

| You are quite good my friend!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 