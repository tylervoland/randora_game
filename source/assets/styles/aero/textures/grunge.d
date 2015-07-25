module assets.game.styles.aero.textures.grunge;

import assets.game.styles.aero.textures;
class Grunge(Master) : RNDImage!(Master){
	this(Master master){
		super(master, AERO_TEXTURES_DIRECTORY, "grunge.png");
		this.type = "Grunge";
		this.name = "grunge";
	}
}
