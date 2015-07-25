module music.music;

import game.music;
import resource.music;
class Music(Master) : RNDMusic!(Master){
	this(Master master, string file){
		super(master, MUSIC_DIRECTORY, file);
	}
}
/+
class MusicFile(Master) : Music!(Master){
	this(Master master){
		super(master, "music_file.mp3");
	}
}
+/
