module assets.game.images.finger.finger;

import assets.game.images.finger;
class Finger(Master) : RNDImage!(Master){
	this(Master master){
		super(master, FINGER_DIRECTORY, "finger.png");
		this.type = "Finger";
		this.name = "finger";
	}
}
