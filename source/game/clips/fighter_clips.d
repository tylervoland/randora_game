module scaffold.clips.fighter_clips;
/+
import std.stdio;

import ui.primitives.clips.character_clips;
class FighterClips(Master) : CharacterClips!(Master){
	this(Master parent){
		scope(success){}
		scope(failure){ "FighterClips() failure".writeln; }
		scope(exit){}
		
		super(parent);
	}
}
+/
