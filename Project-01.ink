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
VAR visited_before = false
VAR has_new_wand = false
VAR visited_before_2 = false
VAR visited_before_3 = false


-> storm_enter

==storm_enter==

This is the tale of the great wizard Greenbeard, and his travels in the fine lands of Celine. 


You are currently Level {level}.
Coins : {money}

STATS:
Strength : {strength}
Intellligence : {intelligence}
Charisma : {charisma}


You currently have {reallocations} available stat reallocations. You can choose to reallocate one of your stat points at a CAMPFIRE or FIREPLACE. 

You find yourself in the midst of a great torrential storm. The winds lap violently at your robes as you drudge yourself through the steppes around you, its great green plains of thick grain rocking back and forth. You are the wizard Greenbeard, and your name is known in these parts -- mostly for your role in the Grand Coup and your battles overseas, but also for your highly charitable nature. 
Indeed, the reason behind your visit to this grand kindom of Celine is to hear and fulfill one final request of the capital's last remaining elder, a task the reigning Chancellor Prince Roman has honored you with the privelige of caryring out. You grit your teeth in frustration as you continue your march northwards, scorning the "fair" Prince under your breath. Though the offer is presented as a choice, there was no such thing, as if you had refused the Prince would surely have placed a bounty on your head. And so you had to leave your comfortable life and abode far off in the Western continent, snatched away from your pipe and your fireplace.
The plains of south Celine are wild and bare, and as you trudge along against the winds you see naught but a few abandoned encampments besides the path you take. "How am I supposed to blow smoke rings in this weather," you think to yourself as you pass by yet another delapidated hut to your left. You've cast a protective shield around you so the rain can't affect you, but the wind remains a bother nonetheless. "if only that damn King hadn't have died, he'd still be in power and I would've have to do this crap," you scoff aloud, and though the rain still falls all around you, the grass beneath your feet scorches as you let your fury escape from your thoughts into the physical realm. This is the true power of the wizard Greenbeard -- and the explanation behind his choice to live the life of a hermit.
As you walk the path laid before you, you begin to approach a structure on your right hand side, this one far bigger than any of the previous ones you've seen so far. It appears to be a ramparts of sorts, some kind of traveller outpost or makeshift wartime fortress, and as you near it you see that its oak walls have been coated with moss and ivy, marred by the passage of time. 



* [Approach and enter the structure] -> enter_structure
* [Continue down the path] -> continue_path_1
-> DONE

==enter_structure==


{visited_before:
    You return to the old outpost. The door is still open, but you've been here before.
    * [Cast a light spell to make things more visible] -> light_spell
- else:
    As you approach the structure, you realize its door has been left wide open, so there's no need to cast any lock-breaking spells -- at least not yet. You step on up to its entrance and push your way past its rickety doorframe, shutting the door slightly behind you. The inside of the structure is pitch black, and you cannot see a thing. You get the feeling there's something there, hidden in the dark, but you can't quite tell what. 
    ~ visited_before = true
* [Cast a light spell to make things more visible] -> light_spell
}



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
THE END !! (dumb ending) 

-> DONE

==dagger_warlock_attack==
You cast a quickness spell on yourself, as well as a strength boosting spell. Your Strength skill is increased by 3 for a temporary period of time. 
You SLASH your way through the mob, dodging spells left and right!! Each warlock falls one by one by your blade.... for the one weakness of the Pollonade Spellpeople are their phsyical weakness. After building up so much immunity to the spells of your world, they often neglect their physical qualities --leaving them quite succeptible to things like poison!!! 

WELL DONE  !!
You are now Level {advance_level()}

STATS:
Strength : {strength}
Intellligence : {intelligence}
Charisma : {charisma}

->upgrade_menu_2

-> DONE


==continue_path_2==
You continue down the path like nothing happened. However because you chose not to take caution, you're ambushed by a horde of corrupted warlocks !!!AHHHH!!! WHAT WILL YOU DO? 

*[Run away!!] -> enter_structure
*[Fight them!] -> spell_fail

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


###upgrade menus 

== upgrade_menu_1 ==
You have advanced to Level {level}! Congratulations. 
Now you may choose one of your three stats to increase by one value. Choose wisely!
+ [increase Strength] 
~ strength = strength + 1 
-> continue_path_1
+ [Increase Intelligence]
~ intelligence = intelligence + 1 
-> continue_path_1
+ [increase Charisma]
~ charisma = charisma + 1
-> continue_path_1

== upgrade_menu_2 ==
You have advanced to Level {level}! Congratulations. 
Now you may choose one of your three stats to increase by one value. Choose wisely!
+ [increase Strength] 
~ strength = strength + 1 
-> continue_path_4
+ [Increase Intelligence]
~ intelligence = intelligence + 1 
-> continue_path_4
+ [increase Charisma]
~ charisma = charisma + 1
-> continue_path_4

== upgrade_menu_3 ==
You have advanced to Level {level}! Congratulations. 
Now you may choose one of your three stats to increase by one value. Choose wisely!
+ [increase Strength] 
~ strength = strength + 1 
-> choices
+ [Increase Intelligence]
~ intelligence = intelligence + 1 
-> choices
+ [increase Charisma]
~ charisma = charisma + 1
-> choices



== continue_path_4 ==


STATS:
Strength : {strength}
Intellligence : {intelligence}
Charisma : {charisma}

{visited_before_2: 
You walk back up the path towards where you slayed the warlocks. You can still see their corpses strewn across the hilly patch of plains, their cloaks soaked in their own blood.  
    You walk past the CAMPFIRE again. Maybe you will take a seat this time around ? 
    *[Choose to reallocate] ->reallocation_options
*[No thanks. Turn around] -> continue_path_6
-else:

   After succesfully slaying all the warlocks, you make your way down the path again. The rain begins to lighten up as you continue to cross the hilly steppes of Celine. You can sense you're nearing the end of your journey, and you're soon to reach the city gates, where you will be escorted to the final elder's living chambers by the Chancellor Prince's envoys. 
You see a CAMPFIRE on your right !! SPLENDID !! You can use this to reallocate any points you might've placed in stats you now regret. Take note; charisma is best used for interactions, intelligence is best used for spellwork, and strength is best used for battle.
 ~   visited_before_2 = true

    *[Choose to reallocate] ->reallocation_options
    *[No thanks!!] -> continue_path_5



}



==continue_path_5==

{visited_before_3:
    As you continue your walking... You see a figure once more. It is the merchant, and he is sitting upon a stump. He sees you approach and cries out.
    "Hello there, wizard! Are you here to buy some more of my goods? Bound for revenge for my snarky comments, perhaps?" He frowns. "I would hope not..."
    "Nooo, I'm not as trigger-happy these days. Consider yourself lucky."
    The merchant smiles. "Oh, alright then. So what's good, then? Have you increased your intelligence in our time away?" He jokes.
    "I have actually. Let's do some business. I want a discount on that wand." 
- else:
    In the distance you see a figure approach - a merchant of sorts, it seems.
    He walks up to you. 
    "Hello, wizard!! I have goods to sell you!" 
    "Oh really," you say. "Well, I drive a hard bargain."
    "HAH! Well, I think you'll like what you see! Here we have... a PHEASANT SPHERE!!" The merchant pulls out a sphere with a pheasant trapped inside.
    "Useless," you say. "Do you have anything else?"
    "Well," grumbles the merchant, "I suppose I do have this nifty new wand I got from the Eastern Continents.. BUT !! You need at least 4 INTELLIGENCE to use it!" 
}

~visited_before_3 = true

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

{intelligence >= 4:
    It seems like you have enough! So what do you say then? 
    "I'll take it," you say. But... I'm not paying much.
    INTELLIGENCE CHECK PASSED!
- else:
    The merchant smirks. "Oh... you're not quite there yet. Better luck next time I suppose..."
    INTELLIGENCE CHECK FAILED!
    You frown. "Alright then, scum. Your wand work's most likely mediocre anyway."
    ->leave
}

->new_wand



==new_wand==
You've gained a new wand today ! It will serve you well in battle no doubt.
~ has_new_wand = true

You now have {money} coins left.

Now what will you do? 

* [Continue down the path] -> continue_path_6

* [Turn around and go back] -> continue_path_4



==leave==


The merchant laughs and walks away. What now? 
* [Continue down the path] -> continue_path_6
* [Turn around] -> continue_path_4

==continue_path_6

You finally see the city gates in the distance. AT LAST !! You've reached the end of your journey. As you approach the entrance to the city, you thank your lucky stars that it will soon all be over... 

The Chancellor Prince is there to meet you at the gates.
"Hello, fair Greenbeard!!! It's been far too long!" he says when he sees you, running towards you. I forgot to mention; he is only 22 years old, and somewhat of a tyrant. his father died a few years ago, leaving him in charge of the nation of Celine, assuming the positon of "Chancellor Prince" -- a position he was soon to find a way to rework to allow him all the same priveliges and honors of an actual king. You flinch at his presence, but hide it well. 
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
It is a fairly big room, equipped with the many furnishings of an older dwelling -- chairs and tables, a FIREPLACE , and many beautiful paintings. The lighting is dim and mourning, fitting for the occasion, and in the corner you can make out the shape of a bed. Two guards stand on either side of it. As you walk closer, you see a nurse kneeled next to him, whispering stories to him. Suddenly, as you approach, his eyes open.

He grunts. 
"Old man !! Look who I've brought! It's GREENBEARD!! He had to travel here all the way across the ocean man, can you believe it? 
The man moans once more. "Too... loud.. quiet down you little squirt..." His face is scrunched in pain, the lines on his face telling a story -- he was clearly older than a hundred years old. Old enough to experience the olden days of the elves and Purple Warlocks firsthand. "Wow..." you think to yourself. "The kinds of stories this man must have..."
The prince laughs. "Oh, shut up you old fart. Go on... Tell him what you wish!" 

You approach the old man.... 

* [Listen to his request] -> listen
* [reallocate first] -> reallocation_options_2

== listen ==

You kneel down next to him and look him in the eye. The nurse stands and moves away, and the guards turn their backs to give the two of you some privacy. He looks back at you peacefully, yet a hint of greed is behind those ancient, dying eyes -- he wants something. He NEEDS something from you... and you are the only one who can do it. You lean in and position your ear by his mouth to listen.

"Greenbeard...""

You shift your weight. His breath feels awfully uncomfortble on your ear... "Hurry up then," you think to yourself...

* [continue...] -> continue_listening_2

==continue_listening_2

"Kill him.... Kill.. Murder the prince... 
Only you can do it, Greenbeard... I know it's true... I've seen you work, just like I've seen the great wizards of my age who've come and gone... and you're the only one who comes even close to mimicking their power in their primes..." 
He coughs. You shudder a little bit, as horror fills your body. You are not afraid of a mere boy... but you think briefly of the old King, who you knew well... and of his wife, who yet lives, though she's permitted little sunlight by the cruel Prince, locked away deep in her corridors.
"Come closer, dear Greenbeard..." mutters the man, louder this time, for the rest in the room to hear. 

* [Come closer] -> come_closer

==come_closer==

"The King... was murdered by the Prince... four years ago today... I .. know... I know it... And only me ..." He coughs again, much louder this time, and a thick black bile escapes his lips onto his robes. The nurse leaps up and wipes him down a bit before retreating back into the corner. 
"Make it quick, Greenbeard," snarls the Prince. You shudder at his voice. "Is this really happening...?" you think to yourself.

"Believe me, wizard. Heed my words and grant my final wish. Slay the prince and plunge our kingdom into its rightful anarchy... Things will sort themselves.. out.. Better to live a horrid truth than a horrid ... lie....." He chokes out these final words, before coughing up a pint of blood, his head falling flat. 
Silence for a moment. The nurse jumps back up. You turn around and stare at the Prince for a moment -- it feels like time has stood still. You barely hear the nurse say, "he's dead," and barely comprehend the sight before you as the Prince smiles at you. 


"So? What did he say?"

You are now Level {advance_level()}.
-> upgrade_menu_3

STATS:
Strength : {strength}
Intellligence : {intelligence}
Charisma : {charisma}

==choices==
STATS: 



Strength : {strength}
Intellligence : {intelligence}
Charisma : {charisma}


+ [Attack the Prince] -> kill
* [Tell the Prince what the man said] -> tell

==tell==
You tell him, and the Prince is shocked. 
"I would never!! You know that!!" He smiles at you, mildly convincingly, and slaps you on the back. Come then, old friend. He was on his dying breath, and he told you THAT? You must be joking, surely." He then frowns. 
You take a step forward. "I don't think I like this kind of joke. Greenbeard, he says as he glances over towards the guards, who inch forward as well. 

*[Attack the prince] -> kill
*[Stand down] -> standdown

==standdown
You submit to the Prince's will... And alas, he realizes the threat you'd pose if he let you go, so he promplty has you killed.
YOU LOSE!
(BAD ENDING)

-> DONE


==kill==
You draw your wand and lurch forwards to strike. "CATATOSTRUPHUM MORIARTUS!" you shout as you point your wand towards the prince, and a great purple spirit escapes the tip of it... But a guard leaps in front of him, catching the missile right in his chest, taking the full force of its power. He's thrown across the room and lands upon a table at the far corner, breaking it in half. 
The Prince shouts with anger and runs out of the building. You give chase, dodging the guard as best you can, but he grabs your knee!!

{strength >= 2:
You break free from the guard's grip and chase after the prince. 
STRENGTH CHECK PASSED!

* [Give chase!!] ->give_chase

- else:

You're not strong enough to escape his grip in time.... and unfortunately, the prince gets away....

STRENGTH CHECK FAILED 
The warlock guardians of the city cast a protective guard over its gates, and you can no longer escape... you fight to your best ability, but there's no point.... 
THE END!! (weak ending)
+[Rewind to the man's deathbed scene] -> come_closer

}

->DONE


==give_chase==
You chase him down and tackle him.... The great alarm bells sound behind you, positioned atop the southern gates.. But you'll have time to kill him before the guards reach you. 
The boy writhes and whimpers under your grasp. The people of the City of Green Tea Leaves gather around the two of you, whispering and muttering in awe at the scene before them. It's worth nothing that none of them step forward to stop you.... 
"GREENBEARD!! What is this!! What are you doing??! What did that man tell you? I... Stop this at once!" The Prince cries out. 
Any sympathy you once would've had for the boy is now gone .... For what would the point be, of an old man to tell a lie for his last words... just to have the city thrown into chaos? Surely not, when he wouldn't be alive to see it. No. The sudden death of the King, the poor excuses given by the autopsy commission (who were hired by the on's followers)... it all adds up to you in this moment. The Prince killed the King. And here he is, below your hands, at your mercy.
"Please dont kill me, Greenbeard... I.. I don't know what he told you in there, but it isn't true... I didn't do it..." He looks up at you with fear in his eyes, masking his rage -- but you see through his act.
*["Did what? I didn't say anything about anything..."] -> didwhat
*["You killed a good friend of mine. For what? For power? Tell me."] -> tellme

==tellme ==
The Prince scoffs and spits upwards at you, but misses, and the spit comes right down in his face. Lol
"In this land, we believe in the will of the elders... And the rightful passing down of ideas from old to new. You betrayed that principle, as you did your own father. You must die now. Surely you realize that."

The Prince shudders. "Do it then." He looks up at you with an unreadable expression. The look of a man who has accepted his fate. 

* [Kill him] -> killhim
* [Take mercy] -> takemercy

-> DONE
==didwhat

The Prince goes red. You smile. There is no doubt about it now. 
"In this land, we believe in the will of the elders... And the rightful passing down of ideas from old to new. You betrayed that principle, as you did your own father. You must die now. Surely you realize that."

The Prince shudders. "Do it then." He looks up at you with an unreadable expression. The look of a man who has accepted his fate.

* [Kill him] -> killhim
* [Mercy] -> takemercy

==killhim==
{open_chest: You plunge your dagger you claimed from the chest off the main path to town into his chest, the poison of its blade quickly seeping into the veins around the chambers of his heart. The death is quick... and painless. Something you can't say for the many innocent lives he took in his reigning years as Chancellor Prince.}
{not open_chest: You {has_new_wand: take your fancy new wand you got from the merchant, and} raise your wand up high and mutter the killing spell. "EXOBILONOMUS PORIPHICUS!!!" A bright green flare of surging magical energy escapes it, plunging straight into the Prince's heart. A quick and painless death. Something you can't say for the many innocent lives he took in his reigning years as Chancellor Prince.}
As you watch the life fade from your friend's son's eyes, you feel the weight of a great burden lift up off your back. The city has been freed from its curse -- and now maybe it would inherit a new one, this is true. But you've fulfilled the final wish of its final elder. He wanted nothing more than to have his fellow citizens of Celine live a life of truth. And so... 
Your next duty is to take to the world the story of the Prince's plot. They deserve to know the truth, as this too was part of the old man's wish.
"LOUDUS MEGAPHONIUMUS!" you shout, followed by "TELEPATHiPHORTH MAGICIA INTRISINET!!"" These produce two effects -- one that magnifies the sound of your voice a hundred fold, so that all throughout the city may hear your words, and one for the willing Wizards in the world, so that they hear your voice in the form of telepathy.
"All who may hear these words!! I pray thee take heed and close notice of what I say here today! I am the wizard Greenbeard, and I was tasked with fulfilling the last request of the last elder of Celine's capital city, an task I took up against my will, under the tyrannical oversight of the Chancellor Prince! He who is now underneath my foot, his body lifeless and limp!! WHY?? For he is the one who MURDERED our old KING!! I take it upon you, all of you here in the City of Green Tea Leaves, as well as those magically inclined listening abroad; DO NOT LET THOSE BEHIND THIS MAN AND HIS PLOT ESCAPE HIS JUDGEMENT!! There is SOMETHING FISHY AFOOT! GREENBEARD OUT!!!! 

And so the crowds surrounding erupt into raucous applause, as a riot breaks out in the streets and squares of the heart of Celine. Any guards who dare resist against the full frontal force of the people's fury are toppled quickly, their armor torn from their skin like ants to a fallen insect... You can only watch on as the people claim their fate for their own. You know this is what the old man would've wanted..

"Inactriset invisiblus," you say softly under your breath, as your form is shrouded in an invisble cloud of magical energy. You've done your duty. It's time to return home, and puff on some much-deserved pipeweed.

CONGRATS!!! YOU HAVE COMPELTED THE GAME!!!

FINAL STATS: 
Level : {level}.
Coins : {money}

STATS:
Strength : {strength}
Intellligence : {intelligence}
Charisma : {charisma}


(LAWFUL GOOD ENDING)


-> DONE

==takemercy==
You raise your wand... {has_new_wand: your brand new, flashy wand you've bought off the merchant ...}... and cast the Binding spell. "RESTRICTOPHUS NOLOTROLIMB ACTREOUS!!" White chains of infallible matter escape from the lip of your wand, trapping the Prince and restricting his movement entirely. He will not be able to move until you say the words once more. "LOUDUS MEGAPHONIUMUS!" you shout, followed by "TELEPATHiPHORTH MAGICIA INTRISINET!!"" These produce two effects -- one that magnifies the sound of your voice a hundred fold, so that all throughout the city may hear your words, and one for the willing Wizards in the world, so that they hear your voice in the form of telepathy.
"All who may hear these words!! I pray thee take heed and close notice of what I say here today! I am the wizard Greenbeard, and I was tasked with fulfilling the last request of the last elder of Celine's capital city, an task I took up against my will, under the tyrannical oversight of the Chancellor Prince! He who is now underneath my foot, bound by my impenetrable constraints!! WHY?? For he is the one who MURDERED our old KING!! I take it upon you, all of you here in the City of Green Tea Leaves, as well as those magically inclined listening abroad; DO NOT LET THIS MAN ESCAPE HIS JUDGEMENT!! I cannot, in my right mind, kill the boy! So I leave it to you all instead. GREENBEARD OUT!!!! 

And so the crowds surrounding erupt into raucous applause, as a riot breaks out in the streets and squares of the heart of Celine. Any guards who dare resist against the full frontal force of the people's fury are toppled quickly, their armor torn from their skin like ants to a fallen insect... You can only watch on as the people claim their fate for their own. You know this is what the old man would've wanted.. but more so, you know the king would be happy to know someone saw it in their heart to forgive his son. It wasn't in the King's nature to hold a grudge.
"Inactriset invisiblus," you say softly under your breath, as your form is shrouded in an invisble cloud of magical energy. You've done your duty. It's time to return home, and puff on some much-deserved pipeweed.

CONGRATS!!! YOU HAVE COMPELTED THE GAME!!!

FINAL STATS: 
Level : {level}.
Coins : {money}

STATS:
Strength : {strength}
Intellligence : {intelligence}
Charisma : {charisma}


(CHAOTIC GOOD ENDING)


-> DONE

-> DONE






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

###reallocations 1


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



###reallocations 2 

== reallocation_menu_2 ==
{ reallocations > 0:
    -> reallocation_options_2
- else:
    -> no_realloc_2
}


== reallocation_options_2 ==
You have {reallocations} reallocation points left. 

Choose a stat point to weaken: 

+ {strength > 0} [Strength] 
    -> strength_realloc_2

+ {intelligence > 0} [Intelligence] 
    -> intelligence_realloc_2

+ {charisma > 0} [Charisma] 
    -> charisma_realloc_2


== strength_realloc_2 ==
Choose a stat to reallocate the point towards:
* [Intelligence]
    ~ reallocate("strength", "intelligence")
    -> after_reallocation_2
* [Charisma]
    ~ reallocate("strength", "charisma")
    -> after_reallocation_2


== intelligence_realloc_2 ==
Choose a stat to reallocate the point towards: 
* [Strength] 
    ~ reallocate("intelligence", "strength")
    -> after_reallocation_2
* [Charisma]
    ~ reallocate("intelligence", "charisma")
    -> after_reallocation_2


== charisma_realloc_2 ==
Choose a stat to allocate the point towards:
* [Strength]
    ~ reallocate("charisma", "strength")
    -> after_reallocation_2
* [Intelligence]
    ~ reallocate("charisma", "intelligence")
    -> after_reallocation_2


== no_realloc_2 ==
You have no reallocations left. If you're soft-locked consider restarting. Oops !! !
-> after_reallocation_2


== after_reallocation_2 ==
CURRENT STATS :
Strength : {strength}
Intelligence : {intelligence}
Charisma : {charisma}
-> post_reallocation_2

==post_reallocation_2 ==
-> listen

-> DONE