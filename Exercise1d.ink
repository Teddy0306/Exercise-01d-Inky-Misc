/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1



-> bedroom

== bedroom ==
{Your alarm goes off. It's {advance_time()}. You have to leave for work in an hour.|It's {advance_time()}.}
*[Go to Work]
    { 
    - dressed && breakfast && coffee:
        ->yippee
    - dressed && breakfast && not coffee:
        ->eep
   -  dressed && not breakfast:
        ->perish
    - not dressed:
        ->fired
    }
*[Get Dressed] ->dressed
*[Eat Breakfast] ->breakfast
*[Make Coffee] ->coffee
+[Doom Scroll] ->ohno


== dressed ==
You get dressed in your favorite outfit. It gives you confidence for the day. 
{
    - time >= 3:
        ->late
    -else:
        ->bedroom
}


== breakfast ==
You eat a healthy and fulfilling breakfast that gives you energy for the day.
{
    - time >= 3:
        ->late
    -else:
        ->bedroom
}


== coffee ==
You make a delicious cup of coffee for the day. Sleep won't be taking you today.
{
    - time >= 3:
        ->late
    -else:
        ->bedroom
}


== ohno ==
You decided to play around on your phone for a little bit. It won't take you that much longer to get ready.
{
    - time >= 3:
        ->late
    -else:
        ->bedroom
}


== fired ==
You show up to your very important, very serious business job with no clothes on. You're fired on the spot and are kicked to the streets cold and vulnerable. 
->DONE


== perish ==
You decide breakfast is for losers and you don't need it. But you forget up that you need to walk 3 hours, uphill, in the snow, and you perish on the way to work.
->DONE


== no_phone ==
You get to work, but your boss is upset. You forgot your phone and missed a text from them asking for coffee. They cannot handle being ignored and fire you on the spot.
->DONE


== eep ==
You make it to work, but without your coffee, you fall alseep at your desk. You wake up in the middle of the night. Everyone is gone and the whole office is cleared out. Your boss moved everyone to a different building while you were alseep just to fuck with you. You never found your boss or our coworkers ever again.
->DONE


== yippee ==
You get to work safe and sound. Your boss is impressed with you that he gives you a promotion. Yippee! Now do it again.
->DONE


== late ==
You look at the time and realize you're going to be late for work. You went back. 
Not because you were fired, you just couldn't handle the shame and could never show your face there again.
->DONE


== function advance_time ==

    ~ time = time + 1
    

    {    
        - time == 0:
            ~ return "9:00"
        
        - time == 1:
            ~ return "9:15"
        
        - time == 2:
            ~ return "9:30"
            
        - time == 3:
            ~ return "9:45"
    }
    
        
    ~ return time
    
    
    
