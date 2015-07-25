module assets.assets;

import assets;
class Assets(Master) : RNDOwned!(Master){
	this(Master master){
		super(master);
	}
}
