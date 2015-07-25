module assets.game.styles.aero.textures.sunbeam;

import assets.game.styles.aero.textures;
class SunBeam(Master) : RNDImage!(Master){
	this(Master master){
		super(master, AERO_TEXTURES_DIRECTORY, "sunbeam.png");
		this.type = "SunBeam";
		this.name = "sunbeam";
	}
}
