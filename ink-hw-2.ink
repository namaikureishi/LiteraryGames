// Please fix the errors in this Ink file. 

// NOTE: some errors can be fixed multiple ways. As long as you fix the error and the story flows logically, your fix is good. 

// NOTE #2: some errors will not show as an error in Ink-- you will have to deduce what the "novice coder" meant to do, and change one interpretted code statement to another to make it work as intended. (These should be fairly obvious.) 

// NOTE #3: try to intuit the intent of the "novice coder"-- you can "fix" it by completely re-writing the story, but that would be inserting your author's voice into the story. Try to only fix the code based on what the original author intended. 

// When you are finished, please refine the Ink Story you wrote during Monday's in-class Ink Game Jam. Stories DO NOT need to incorporate all the code statements. You can turn in a story that ONLY uses basic Choices, and that would be sufficient. 

// By "refine" I mean turn in a complete game. More will be said in class about the constraints, but please remember "complete" does not necessarily mean "complex". You will hopefully be able to finish most of your game in class, and will only need to debug a bit of code to get it ready to turn in. 

// Extensions are available. If you spend more than two hours on this homework, you do not need to spend another two hours refining your game (unless you want to). 
//~var -> VAR
//changed has_hedgehog to false
VAR has_rabbit = false 
VAR has_hedgehog = false 
VAR checked_doors = 0

You stand before four doors. 

//checked_doors+ -> checked_doors++
- (doors)
* Door one 
    Behind door one is a stuffed rabbit. You take the rabbit. 
    ~ has_rabbit = "true" 
    ~ checked_doors++
    -> doors
* Door two 
    Nothing is behind door two.
    ~ checked_doors++ 
    -> doors
* Door three 
    Behind door three is a stuffed hedgehog. You take the hedgehog. 
    ~ has_hedgehog = true
    ~ checked_doors++ 
    -> doors
* Door four 
    There is nothing behind door four. 
    ~ checked_doors++ 
        -> doors
* How do I leave? 
-> try_to_leave 


=== try_to_leave 
//changed this to 4 instead of 5 
* {checked_doors < 4} You need to check every door -> doors
//made = -> == 
* {checked_doors == 4} You may leave. 
-> has_rabbit_and_has_hedgehog

[
=== has_rabbit_and_has_hedgehog
    The stuffed animals turn their stuffed-animal necks and beckon you to come closer.
    
    * Lean in?
        "Wake up, you're dreaming."
        -> how_do_i_wake_up
    * Screw this! I'm out of here! 
        -> how_do_i_wake_up
- else: you need some special items to leave...
//fixed loose end
-> how_do_i_wake_up
]

= how_do_i_wake_up
//made temp variable global with VAR so it can be accessed later
VAR chosen_animal = 0
* Pinch yourself. -> how_do_i_wake_up
* Jump up and down -> how_do_i_wake_up
* Stare at the stuffed animals quizically. -> how_do_i_wake_up 
* "You must choose one of us."
    * * Choose rabbit. 
    ~ chosen_animal = "rabbit"
    //removed how_do_i_wake_up, changed option to only be you_finally_wake_up_on_your_own
    -> you_finally_wake_up_on_your_own
    * * Choose hedgehog. 
    ~ chosen_animal = "hedgehog"
-> you_finally_wake_up_on_your_own

//fixed missing underscore in stitch name
= you_finally_wake_up_on_your_own

Phew! You're awake. 

* Rub your eyes. 

- When you rub your eyes, you notice something at the foot of your bed. It's the {chosen_animal}. Its button eye twitches. 

//changed THE END to -> END
-> END
