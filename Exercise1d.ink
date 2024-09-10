/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Evening




-> seashore

== seashore ==
You are sitting on the beach. 

It is { advance_time() }


+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

It is { advance_time() }
* { time == 2 } [Pick up some seashells] -> shells
* { time == 2 } [Pick up necklace] -> necklace
* { time == 1 } [Put on sunscreen] -> sunscreen
* { time == 0 } [Stroll to a nearby coffee shop] -> coffee

+ [Stroll back up the beach] -> seashore

== shells ==

You pick up the shells

-> beach2

== necklace ==

You pick up a beautiful pearl necklace to keep for yourself.

-> beach2

== sunscreen ==

You spray on sunscreen to protect yourself from the growing sun rays.

-> beach2

== coffee ==

You head to a local coffee shop to try out their new summer special, The Coconut Refresher, before heading back to the hotel to pack up your belongings.

-> END

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
