Shadow of Mordor Mission/Unlock Trees
=====================================

ABOUT
-----

There is a lot of conflicting information about the mission tree in the
game _Shadow of Mordor_ online, and during a replay of the game I got
interested in figuring out what the tree actually looked like.  This
small little project is the result!  I've also done a tree for the
_Lord of the Hunt_ DLC, and may do _The Bright Lord_ at some point,
too.

I'm fond of using [Graphviz](http://www.graphviz.org/) for this kind of
visualization, because it allows for simple and easy editing, and large
changes can be made to a graph without having to worry about how to
get everything arranged.  The graphs generated can be subpar sometimes,
but in general it does a great job.  The downside to using Graphviz, of
course, is that I *don't* have a lot of control as to how the graph is
drawn, and minor changes in node definition ordering or node linkage can
result in pretty big changes to the resulting image.  Still, IMO the
benefits are worth the drawbacks.

There's two versions of each file - one which has unlocks as separate nodes,
and one which just includes what the missions unlock in with the mission
node itself.  I think the former is a little more obvious if you're just
looking for the quickest path to a specific unlock, but the latter generates
some nicer-looking graphs.

I'm putting this in the public domain, or more specifically the Creative
Commons [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)
license.

In case anyone felt like doublechecking any of my work on this, I'm including
a zipfile named `savegames.zip` with a few savegames in it.  These were
saved on the Linux version, from the GOTY edition which includes the various
DLC.  I'm actually not sure if the savegames are compatible between
Windows/Mac/Linux, though I'd assume they are, or if the savegames would work
if you load it on a game which doesn't have all the same DLC.  For each file,
it's the second save slot which contains the in-progress save; the first is
still the savegame from my very first playthrough, where everything's done.
Here's what you'll find in there:

* `GameData-01-levelled_before_any_missions.sav`: No missions have been started,
  and I've gone through and completed all optional objectives that can be
  done from the start of the game, and levelled the character up to a pretty
  reasonable state.  The first two tiers of powers are unlocked and all available
  powers within those tiers have been unlocked as well.  I've got the DLC sword
  rune which provides access to _Storm of Urfael_, have purchased _Flame of Azkar_,
  and have unlocked a few tiers of health/arrows/focus/runeslots.
* `GameData-02-after_first_three_missions.sav`: After the first three missions
  have been completed.
* `GameData-03-after_climbing_and_killed_warchiefs.sav`: Completed _Climbing the
  Ranks_, and killed four non-storyline Warchiefs (but have not done the mission
  _The Warchief_)
* `GameData-04-after_monument_no_gollum_still.sav`: Finished _The Monument_ but
  have not done the Gollum quest _Shattered Memories_.
* `GameData-05-black_captain_available.sav`: Finished the Gollum quests, and
  _The Black Captain_ is available.

I didn't continue beyond that since the mission tree in the second half is a lot
simpler.

EDITING
-------

The `*.dot` files are the master source for this.  They're just text files -
edit them at will.  The syntax should be pretty easy to follow even if you're
not familiar with it.

The shell script `make.sh` can be used to generate PNGs and SVGs, if you're
on a system which has `bash`.  Otherwise just use Graphviz's "`dot`"
utility to generate them however you like.  The script will also attempt to
compress the PNG images a bit using [OptiPNG](http://optipng.sourceforge.net/).

OBSERVATIONS
------------

It turns out that especially in the first half, the tree is rather complicated.
Many missions require multiple prerequisites, which explains why many of
the online resources about these missions don't agree with each other.

Specifically, the first three missions (_The Slaver_, _The Spirit of Mordor_, and
_An Interested Party_) have to all be completed before more will unlock, and then
there's other dependencies I haven't seen noted anywhere else online after
that, too.  Depending on the order that folks had done missions, it may have
seemed like there was a more linear path, but in reality it's a pretty wide
"web" of missions.  The second half (in Nurn) is a bit more linear apart from
the penultimate mission.

Other observations:

1. I get the impression that originally they'd wanted to maybe force
   _The Slaver_ as the first mission and only then unlock _The Spirit of
   Mordor_.  _The Slaver_ has a bit more in-game dialogue about using
   the wraith world to identify captains, etc, and then _Spirit_ expands it
   a bit to be more explicit about exploiting weaknesses.

2. Ghuls don't appear in-game until you've finished _Shattered Memories_,
   but the mission _The Dark Monument_ involves Ghuls, and you can get
   there without ever finishing _Shattered Memories_.  I bet that was
   intended to be a prerequisite and just never caught.  Amusingly,
   Hunting Challenge 5 (kill eight Ghuls) remains "locked" (by saying
   "Complete More Main Missions to find out"), but can be completed anyway
   during _Dark Monument_, since you're killing Ghuls.

3. A couple of the early missions unlock some enemy types, though it didn't
   seem worth it to mention it in the graph, given that the opening section
   is already rather messy-looking:
     * _Spirit of Mordor_ unlocks Defenders
     * _An Interested Party_ unlocks Hunters
