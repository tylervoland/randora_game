module game.screens.screens;

import game.screens;
class Screens(Master) : RNDContainer!(Master, Screens){
	//StartScreen!(typeof(this)) start_screen = null;
	BattlefieldScreen!(typeof(this)) battlefield_screen = null;
	
	this(Master master){
		super(master);
		this.type = "Screens";
		this.name = "screens";
		
		//this.start_screen = new StartScreen!(typeof(this))(this);
		//this.add_slave(this.start_screen);
		
		this.battlefield_screen = new BattlefieldScreen!(typeof(this))(this);
		this.add_slave(this.battlefield_screen);
		this.log();
	}
}
