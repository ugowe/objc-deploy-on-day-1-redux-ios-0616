# Deploy on Day 1 *redux*

Welcome to Flatiron School! :blue_heart:

You're going to be writing code every day that you're here, and today is no exception. Let's see what you remember from doing the prework and write a simple [tic-tac-toe](https://en.wikipedia.org/wiki/Tic_tac_toe) game with those around you.

The UI has already been built for you -- we don't expect you to understand UI stuff for another few weeks :). Your job is to implement the game logic in the `FISTicTacToeGame.m` file. The methods in that file are what the UI uses to power the game; by correctly implementing the logic, you'll have a fully functioning game!


## Objectives

1. Get to know your peers. If you feel stuck, ask your new best friends for help! Team up with those around you!
2. Refresh and apply what you learned from the prework. Be confident! You'll be shocked at how much you can do with what you know.
3. Deploy on day 1!


## Tips

* Don't get bogged down in git (if you choose to use it)
* Many of you will want to know the right way to do it, but however your team decides they want to tackle things **is** the right way today.
* The most important things are getting something working and learning to work as a team. There really are no wrong answers. 
* Keep in mind that you don't need to build things in the order they are presented below! Start with the easiest possible thing that begins to attack the problem, and build from there.
* Run early, run often! Constantly be running the app to see how your code is behaving.
* Google is your friend!


## Instructions

1. Introduce yourself to your neighbors. You're going to get to know each other really well over the next few months. Talk amongst yourselves. I'll give you a topic: Transitional Romanesque architecture was neither transitional nor Romanesque. Discuss.
2. Fork this repo to your account and clone it to your computer.
3. Open the `DeployOnDay1Redux.xcworkspace` file and check out what we've got for you. Go ahead and run the project. You'll see a fairly non-functional tic-tac-toe app. Let's make it work!
4. Open up `FISTicTacToeGame.m`. This is where you'll be doing most of your work. Your job is to implement the methods in there. You'll note that there are already implementations for some of the methods, but they're not exactly smart. Let's look at each method in turn and what it's supposed to do:

* `-init` is responsible for setting up new games. This method should make sure the board is initialized as empty, however you decide to do that.
    * Think about how best to represent your board -- it's a 3x3 grid, where each space can be empty, "X", or "O". What sort of data structure that you know might work? Don't forget that the basic data structures can be nested if need be!
    * **Hint**: is there another method whose job it is to clear the board? Could you just call that from here?
    * **Hint**: you may want to use the `board` property we declared for you (accessed by `self.board`), but if you want to go with a different approach, feel free.

* `-resetBoard` should clear the game board of all player moves, so that a new game can begin.

* `-playerAtColumn:row:` is called to determine what player has a piece at the given position. It should return a string representing which player (if any) has a piece at the given position. Valid return values are "X", "O", and "" (the empty string, for a space with no piece).

* `-canPlayAtColumn:row:` is called before placing a piece at the given location. It should return `YES` if the given position is a valid place to play a piece, and `NO` if not.
    * **Hint**: Under the rules of tic-tac-toe, what makes a position a valid place to play? Is there another method you can use to implement this one?

* `-playXAtColumn:row:` and `-playOAtColumn:row:` should place the specified piece at the given position on the board. These methods are called in response to the user clicking on valid spaces on the board.

* `-winningPlayer` is called after every turn is completed. It should check if the board currently has a winner, and return "X", "O", or "" (the empty string, meaning no winner) as appropriate.
    * **Hint**: This is probably the hardest part of this challenge. Think about the rules of tic-tac-toe, and how those translate into statements about how your board is stored. Don't worry about being clever from the start -- do the simplest thing that could possibly work, then worry about cleaning it up.

* `-isADraw` is called after every turn is completed, if `-winningPlayer` returns no winner. It should return `YES` if the game is a draw (that is, the board is full, and no player has won).



Once you've implemented those methods, you should have a fully functioning game! Battle your teammates! Make sure you didn't miss any win conditions, and be on the lookout for bugs!


## Advanced

Finished the game, did you? Let's add some cool features. Here are some options:

* Add an AI opponent! To do this, open up `FISComputerPlayer.m`. You'll need to change the `+isEnabled` method to return `YES`, and then implement the `-nextPlay` method.
    * `-nextPlay` should examine the board using the methods on `self.game` and decide what move to make next. It should return its decision as a `FISTicTacToePosition`, which can be made with the `FISTicTacToePositionMake` function, like this: `FISTicTacToePositionMake(1, 1)`.
    * Start with a naive implementation -- maybe just have it return a random valid play.
    * From there, the sky's the limit. In perfect play, tic-tac-toe always ends in a draw. Can you make an unbeatable AI?

* It sure would be nice if the win records persisted between games, and even launches of the app. Figure out how to store and retrieve the `xPlayerWinCount` and `oPlayerWinCount` properties of `FISTicTacToeGame` in a persistent fashion.
    * **Hint**: look into `NSUserDefaults`, and maybe overriding getters and setters.

* Optimize and simplify your `-winningPlayer` and `-isADraw` methods. Does the game actually need to finish for these to determine their return value? Can you utilize loops in a clever way to make the code shorter and less repetitive?

* If you're interested in the UI, poke around in the `UI` group in the Xcode project. The `Main.storyboard` file is where most of the layout stuff happens. Change some colors and fonts! Move some stuff around! We'll be diving into interface in a serious way shortly.

<a href='https://learn.co/lessons/objc-deploy-on-day-1-redux' data-visibility='hidden'>View this lesson on Learn.co</a>
