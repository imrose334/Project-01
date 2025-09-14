/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

VAR level = 1
VAR strength = 1 
VAR intelligence = 3 
VAR charisma = 2
VAR reallocations = 2
VAR money = 50


-> storm_enter

==storm_enter==
You are currently Level {level}.
Coins : {money}

STATS:
Strength : {strength}
Intellligence : {intelligence}
Charisma : {charisma}


You currently have {reallocations} available stat reallocations. You can choose to reallocate one of your stat points at a CAMPFIRE. 

You find yourself in the midst of a great torrential storm. The winds lap violently at your robes as you drudge yourself through the steppes around you, its great green plains of thick grain rocking back and forth. You are the wizard Greenbeard, and your name is known in these parts -- mostly for your role in the Grand Coup and your battles overseas, but also for your highly charitable nature. 
Indeed, the reason behind your visit to this grand kindom of Celine is to hear and fulfill one final request of the capital's last remaining elder, a task the reigning Chancellor Prince Roman has honored you with the privelige of caryring out. You grit your teeth in frustration as you continue your march northwards, scorning the "fair" Prince under your breath. Though the offer is presented as a choice, there was no such thing, as if you had refused the Prince would surely have placed a bounty on your head. And so you had to leave your comfortable life and abode far off in the Western continent, snatched away from your pipe and your fireplace.
The plains of south Celine are wild and bare, and as you trudge along against the winds you see naught but a few abandoned encampments besides the path you take. "How am I supposed to blow smoke rings in this weather," you think to yourself as you pass by yet another delapidated hut to your left. You've cast a protective shield around you so the rain can't affect you, but the wind remains a bother nonetheless. "if only that damn King hadn't have died, he'd still be in power and I would've have to do this crap," you scoff aloud, and though the rain still falls all around you, the grass beneath your feet scorches as you let your fury escape from your thoughts into the physical realm. This is the true power of the wizard Greenbeard -- and the explanation behind his choice to live the life of a hermit.
As you walk the path laid before you, you begin to approach a structure on your right hand side, this one far bigger than any of the previous ones you've seen so far. It appears to be a ramparts of sorts, some kind of traveller outpost or makeshift wartime fortress, and as you near it you see that its oak walls have been coated with moss and ivy, marred by the passage of time. 



* [Approach and enter the structure] -> enter_structure
* [Continue down the path] -> continue_path_1
-> DONE

==enter_structure==
As you approach the structure, you realize its door has been left wide open, so there's no need to cast any lock-breaking spells -- at least not yet. You step on up to its entrance and push your way past its rickety doorframe, shutting the door slightly behind you. The inside of the structure is pitch black, and you cannot see a thing. You get the feeling there's something there, hidden in the dark, but you can't quite tell what. 



* [Cast a light spell to make things more visible] -> light_spell
* [Turn around and exit from whence you came] -> exit

==light_spell==
You stretch your wand outwards, its coiled hilt nestled firmly in your grasp, as you utter the spellwords "noriostramus astrodallium luxominimum!!!" The whole room is suddenly filled with bright light, casting shadows all around you. Now that you can see, you notice the walls are covered in weapons, and the ground is strewn with sheilds and stray pieces of armor. It would seem you've stumbled across an armory. 
And in the corner, nestled between two empty shelves, is a large chest. It's ribbed with diamonds and encrusted with jewels, making you wonder why it hasn't yet been looted by other passerbys. As you take a closer look, you see it's adorned with the crest of the old King. You attempt to open it, but it's locked tightly shut. "How did this get here," you wonder to yourself as you prepare your wand. There are a couple of ways to go about this. 

* [Cast a spell to open the locked chest] -> open_chest 
* [Break apart the chest with your staff] -> break_chest

==break_chest==

You break open the chest with a powerful display of force. The chest dissolves into powder. You sigh in despair. "They must have rigged it so that spell wouldn't work. What a waste," you say aloud.
Suddenly, the roof begins to crack. You hear the supports rattle and shake, and realize the building is about to come crashing down on you!!! 

* [Run outside] -> run_outside
* [Do nothing] -> do_nothing

==run_outside==
You quickly run outside of the barracks, just in time before it completely falls appart. The entire structure collapses with a loud grinding noise. 
* [Continue down the path] -> continue_path_1

== do_nothing ==
You stand and await your fate. The roof falls upon you, crushing you to death. Why would you do that. 
THE END 
(DUMB ENDING)
-> END


==open_chest==
You point your wand at the chest and it snaps open with a loud "CRaCK!!!" Inside you find a poison-tipped dagger with a cyan-ribbed hilt. "Score," you say.
Your job here is done.  

You are now Level {advance_level()}.
-> upgrade_menu_1

*[Exit the structure and continue down the path] -> continue_path_1




==exit==
You hightail it on out of there. Whatever goods you might've found surely would'nt have been worth the effort of locating them. 
-> continue_path_1





==continue_path_1
You are currently Level {level}.
Coins: {money}

STATS:
Strength : {strength}
Intellligence : {intelligence}
Charisma : {charisma}



You continue down the path, the rain still pouring down all around you. 
Suddenly, as you walk you hear the footsteps of a great many beings piercing through the rainfall's ambience. A giant, perhaps? Or some kind of warrior horde? You should prepare yourself for battle if the need arises, but you know nothing in these parts likely posseses the abillity to give you much of a great challenge. 

* [Cast a periscope spell to gain an aereal view your surroundings] -> periscope_spell
* [Do nothing and continue walking] -> continue_path_2

==periscope_spell
You shout the spell words "visibel abovalin periscopoliis!!" Suddenly, you can see for miles in each direction. It is as if you had teleported your eyes upwards 60 meters, and given them the ability to see in any direction of their choosing, all at once.
You curse under your breath. Not so far in the distance, you see a violent horde of hooded figures approaching, travling down the very same path you are, just in your direction. 
You prepare your wand. {open_chest: You look down at the dagger you siezed from the open chest. You wonder if it will come in use at all.}
{not open_chest: You don't have any weapons on you. You wonder if this might be a problem.}
* [Continue down the path] -> continue_path_3

* [Turn around] -> go_back_to_structure

==go_back_to_structure==
You walk back up the path, and approach the structure once more. Maybe this time you should enter it, and look for a weapon, if you don't have one. Or not. 
* [Enter it] -> enter_structure
* [Whatever. I shall return to the path, weapon or not.] -> continue_path_3

==continue_path_3==
As the hooded horde approacahes, you realize they are EVIL WARLOCKS !!! BENT ON KILLING ALL WHO MAY WIELD MAGIC LIKE THEMSELVES !!! You ready your wand; but soon realize that these are the dreaded Pollonade caste of warlocks -- a creed that pride themselves on building up immunity to all spells. They are incredibly rare, as the Seven Kingdoms League outlawed their practice long ago, even going so far as to hunt them down like vermin due to their immense defensive power. "What the hell are they doing in south Celine?" you think to yourself frantically, realizing your wand would prove to be near useless as you feared. 
Suddenly, the horde charges you. What will you do!!??

*[Attempt to ward them off with a spell] -> spell_fail
*[Pull out your poison-ribbed dagger and go CRAZY ON THEM !!] -> dagger_warlock_attack

==spell_fail==
You cast a spell like an idiot and it ricochets back and hits you in the face. 
THE END !! (poor listener ending) 
-> DONE

==dagger_warlock_attack==
You cast a quickness spell on yourself, as well as a strength boosting spell. Your Strength skill is increased by 3 for a temporary period of time. 
You SLASH your way through the mob, dodging spells left and right!! Each warlock falls one by one by your blade.... for the one weakness of the Pollonade Spellpeople are their phsyical weakness. After building up so much immunity to the spells of your world, they often neglect their physical qualities --leaving them quite succeptible to things like poison!!! 

WELL DONE  !!
You are now Level {advance_level()}
->upgrade_menu_2

-> DONE


==continue_path_2==
You continue down the path like nothing happened. However because you chose not to take caution, you're ambushed by a horde of corrupted warlocks !!!AHHHH!!!
YOU LOSE !! THE END!!
("lack of caution" ending) 

-> DONE




goblins come 

fight the goblins 

realize you need poison dagger 


if you dont have poison dagger run away

if you do then you get a level


== function advance_level ==
~level = level + 1 
~ return level




== upgrade_menu_1 ==
You have advanced to Level {level}! Congratulations. 
Now you may choose one of your three stats to increase by one value. Choose wisely!
* [increase Strength] 
~ strength = strength + 1 
-> continue_path_1
* [Increase Intelligence]
~ intelligence = intelligence + 1 
-> continue_path_1
* [increase Charisma]
~ charisma = charisma + 1
-> continue_path_1

== upgrade_menu_2 ==
You have advanced to Level {level}! Congratulations. 
Now you may choose one of your three stats to increase by one value. Choose wisely!
* [increase Strength] 
~ strength = strength + 1 
-> continue_path_4
* [Increase Intelligence]
~ intelligence = intelligence + 1 
-> continue_path_4
* [increase Charisma]
~ charisma = charisma + 1
-> continue_path_4



== continue_path_4 ==
After succesfully slaying all the warlocks, you make your way down the path again. The rain begins to lighten up as you continue to cross the hilly steppes of Celine. You can sense you're nearing the end of your journey, and you're soon to reach the city gates, where you will be escorted to the final elder's living chambers by the Chancellor Prince's envoys. 
You see a campfire on your right !! SPLENDID !! You can use this to reallocate any points you might've placed in stats you now regret. Take note; charisma is best used for interactions, intelligence is best used for spellwork, and strength is best used for battle.
*[choose to reallocate] ->reallocation_options
*[no thanks!!] -> continue_path_5

==continue_path_5==

In the distance you see a figure approach - a merchant of sorts, it seems.
He walks up to you. 
"Hello, wizard!! I have goods to sell you!" 
"Oh really," you say. "Well, I drive a hard bargain."
"HAH! Well, I think you'll like what you see! Here we have... a PHEASANT SPHERE!!" The merchant pulls out a sphere with a pheasant trapped inside.
"Useless," you say. "Do you have anything else?"
"Well," grumbles the merchant, "I suppose I do have this replacement wand. BUT !! You need at least 4 INTELLIGENCE to use it! 
{intelligence >= 4:
    It seems like you have enough! So what do you say then? 
    "I'll take it," you say. But... I'm not paying much.
    INTELLIGENCE CHECK PASSED!
    
- else:
    The merchant smirks. "Oh... you're not quite there yet. Better luck next time I suppose..."
    You frown. "Alright then, scum. Your wand work's most likely mediocre anyway."
    ->leave
    }
  




You currently have {money} coins.

{charisma >= 3:
    The merchant eyes you cautiously. "Ah... y-y-yes, of course, nothing less for you, great wizard! For one as charming and persuasive as yourself, I suppose I can offer a discount.... "
    ~ money = money - 5
    You buy the item for 10 coins less than the usual price.
    CHARISMA CHECK PASSED! 
- else:
    The merchant frowns. "Hmph. I don’t make deals with the likes of you wizard SCUM. Standard price only."
    ~ money = money - 15
    You pay the full price.
}
->new_wand


==new_wand==
You've gained a new wand today ! It will serve you well in battle no doubt.

You now have {money} coins left.

Now what will you do? 
* [Continue down the path] -> continue_path_6


==leave==


The merchant laughs and walks away. What now? 
* [Continue down the path] -> continue_path_6

==continue_path_6

You finally see the city gates in the distance. AT LAST !! You've reached the end of your journey. As you approach the entrance to the city, you thank your lucky stars that it will soon all be over... 

The Chancellor Prince is there to meet you at the gates.
"Hello, fair Greenbeard!!! It's been far too long!" he says when he sees you, running towards you. I forgot to mention; he is only 17 years old, and somewhat of a tyrant. his father died a few years ago, leaving him in charge of the nation of Celine, assuming the positon of "Chancellor Prince" -- a position he was soon to find a way to rework to allow him all the same priveliges and honors of an actual king. You flinch at his presence, but hide it well. 
"Hello, noble Prince. It is nice to see you too!" You bow to him, grinding your teeth as you do. "I am ready to fulfill my duty, sir. Where is the elder, and what is his name?" 
"Why, of course, Greenbeard. I know you are a very, very busy man. You have much pipe-smoking to attend to at home in the West Continent -- and I mean not to keep you from your necessary activites." He smirks at you. "What a dick," you think to yourself.

*[Continue listening] -> continue_listening_1

==continue_listening_1

As the Prince continues, your eyes drift to behind him. A crowd has gathered to listen to your conversation, and you can hear your name spoken in hushed whisphers; "Greenbeard, oh my gods, it's really him..." "I've heard the stories.. Have you?" "What a glorious day this is..."
"Well?" The prince looks at you as if he'd asked you something. Oh shit. You weren't listening. 
"Ah yes, yes," you nod and smile, hoping that's enough. Is apparently was, as the prince smiles back and says, "of course you'd agree my old friend! You were my father's favorite of the fair warlocks of age for a reason, after all! I know that head on your shoulders is good and sound, despite all your hubris!" He exclaims with a chuckle. "Is this guy for real right now?" you think. 
"Ah well, enough of this one-sided banter. You were always a dry one, Greenbeard, but I don't blame you for it. If I could cast spells that great, I sure as hell wouldn't fraternize with the likes of mere mortals!" You can see one of his royal guards roll their eyes. "Follow me, old friend, I'll take you to your duty." 
* [Follow the Chancellor Prince] -> follow_prince

==follow_prince==

You follow the prince. He walks down the streets of the capital of Celine, known to its inhabitants as "The City of Green Tea Leaves" due to its lucrative tea trade and iconic green tea trees dotting its many streets and walkways. The city is a beautiful one, well upkept by the King in his days, known far and wide for its academic and athletic prowess -- their scholars and gladiators were some of the highest ranked in the global leagues. "How long has it been since you've visited our city, Greenbeard? Not since my father died, at least." He smiles at you. 
"Oh yes, it's been about 3 or 4 years. I think the last time was for that banquet, a few months before his passing." You oblige his effort at conversation. 
"Ohhhh, of course, how could I forget! I did love your party tricks that evening, though I was too young to appreciate the subtle nuances of your spellcraft! I do hope the elder asks you to perform some kind of wizardry... Surely he must, right? I mean, he asked for you specifically for a reason, no doubt."
"I suppose we'll see, my Lord," you say. ... "My god, does this guy ever shut up?" you say, this time to yourself. 
You approach a split in the path. The prince grins at you. "So... Greenbeard, since its been so long... do you think you can manage telling me which way's the correct way to the elder dwelling quarters? Surely you haven't forgotten... I know you've been there before." 

Uh oh.. Which way was it again? 

* [Left path] -> continue_following
*[Right path] -> right_path

==right_path==
You begin walking down the right path. You do not wait to see if the Prince follows you.... and suddenly, you hear a loud CLANG !!! A giant metal anvil has fallen directly infront of you... a TRAP!!! And a failed one at that.... You briskly turn around and guard yourself. But you see... the Prince buckled over in laughter. 
"OHH YOU SHOULD'VE SEEN THE LOOK ON YOUR FACE!!" He cackles. He's really losing it over there. "OH MY GODS, HAHAHAAA!! WHAT FUN!! HOW FUN IT IS, TO TRICK A WIZARD!!" 
The people surrounding him begin laughing too, as the guards glare at them... they know if they refuse... they might be chosen at random and strung up in the city courtyards. It all depends on the Prince's mood that day.. They know this well. 

'I'm not amused, Prince," you say. "You're lucky your father is dead. If he wasn't he'd give you a right spanking for that one.
At that, the Prince walks right up to you, and slaps you in the face.

YOUR STATS: 
Strength : {strength}
Intellligence : {intelligence}
Charisma : {charisma}


* [Retaliate...] -> retaliate
* [Do nothing.] -> do_nothing_2


==retaliate==
You smack him back, harder than his. He reels backwards in shock. The crowd gaspes audibly.. and the guards point their spears towards you, waiting for the Prince's next move.... 

{charisma >= 3:
    The Prince suddenly breaks out into laughter. He laughs so hard the crowd begins to laugh a litte... before stopping and waiting... this was odd. Was this the calm before the storm?.. 
    "You know... Greenbeard, I haven't been slapped in a long, long, time. Not since my father passed! I've always thought you reminded me of him a wee You're both old, after all. I respect your bravery. It takes balls to slap a prince in front of his subjects. I'll remember that."
    
    CHARISMA CHECK PASSED! 
    He slaps you again. This time, you both laugh. Maybe this kid isn't so bad after all. 
    
    -> continue_following
- else:
   
    GUARDS!!! SEIZE HIM!!! 
    
    
    The guards leap upon you savagely. They mean to kill. 
    CHARISMA CHECK FAILED!
    YOU LOSE!
    (out with a bang ending)
   
    
}


-> DONE

==do_nothing_2==

-> DONE

==continue_following==

FINALLY, he brings you to the entrance of the elder's abode. "Here we are.... Shall we, Greenbeard?"
He opens the door, entering the home... 
It is a fairly big room, equipped with the many furnishings of an older dwelling -- chairs and tables, and a fireplace, and many beautiful paintings. The lighting is dim and mourning, fitting for the occasion, and in the corner you can make out the shape of a bed. Two guards stand on either side of it. As you walk closer, you see a nurse kneeled next to him, whispering stories to him. Suddenly, as you approach, his eyes open.

He grunts. 
"Old man !! Look who I've brought! It's GREENBEARD!! He had to travel here all the way across the ocean man, can you believe it? 
The man moans once more. "Too... loud.. quiet down you little squirt..." His face is scrunched in pain, the lines on his face telling a story -- he was clearly older than a hundred years old. Old enough to experience the olden days of the elves and Purple Warlocks firsthand. "Wow..." you think to yourself. "The kinds of stories this man must have..."
The prince laughs. "Oh, shut up you old fart. Go on... Tell him what you wish!" 

You approach the old man.... 

* [Listen to his request] -> listen

== listen ==

You kneel down next to him and look him in the eye. He looks back at you peacefully, yet a hint of greed is behind those eyes; he wants something. He NEEDS something from you... and you are the only one who can do it. You lean in and position your ear by his mouth. 

"Greenbeard...""

You shift your weight. His breath feels awfully uncomfortble on your ear... "Hurry up then," you think to yourself...

* [continue...] -> continue_listening_2

==continue_listening_2

"Kill him.... Kill.. Murder the prince... 
Only you can do it, Greenbeard... I know it's true... I've seen you work, just like I've seen the great wizards of my age who've come and gone... and you're the only one who comes even close to mimicking their power in their primes..." 
He coughs. You shudder a little bit, as horror fills your body. You are not afraid of a mere boy... but you think briefly of the old King, who you knew well... and of his wife, who yet lives, though she's permitted little sunlight by the cruel Prince, locked away in her corridors... 



-> DONE
== function reallocate(fromStat, toStat) ==
{fromStat:
    - "strength":
        ~ strength = strength - 1 
    - "intelligence":
        ~ intelligence = intelligence - 1 
    - "charisma":
        ~ charisma = charisma - 1 
}

{toStat:
    - "strength":
        ~ strength = strength + 1 
    - "intelligence":
        ~ intelligence = intelligence + 1 
    - "charisma":
        ~ charisma = charisma + 1 
}
~ reallocations = reallocations - 1
~ return reallocations 


== reallocation_menu ==
{ reallocations > 0:
    -> reallocation_options
- else:
    -> no_realloc
}


== reallocation_options ==
You have {reallocations} reallocation points left. 

Choose a stat point to weaken: 

+ {strength > 0} [Strength] 
    -> strength_realloc

+ {intelligence > 0} [Intelligence] 
    -> intelligence_realloc

+ {charisma > 0} [Charisma] 
    -> charisma_realloc


== strength_realloc ==
Choose a stat to reallocate the point towards:
* [Intelligence]
    ~ reallocate("strength", "intelligence")
    -> after_reallocation
* [Charisma]
    ~ reallocate("strength", "charisma")
    -> after_reallocation


== intelligence_realloc ==
Choose a stat to reallocate the point towards: 
* [Strength] 
    ~ reallocate("intelligence", "strength")
    -> after_reallocation
* [Charisma]
    ~ reallocate("intelligence", "charisma")
    -> after_reallocation


== charisma_realloc ==
Choose a stat to allocate the point towards:
* [Strength]
    ~ reallocate("charisma", "strength")
    -> after_reallocation
* [Intelligence]
    ~ reallocate("charisma", "intelligence")
    -> after_reallocation


== no_realloc ==
You have no reallocations left. If you're soft-locked consider restarting. Oops !! !
-> after_reallocation


== after_reallocation ==
CURRENT STATS :
Strength : {strength}
Intelligence : {intelligence}
Charisma : {charisma}
-> post_reallocation

==post_reallocation ==
-> continue_path_5

-> DONE