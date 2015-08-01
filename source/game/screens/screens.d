module game.screens.screens;

import game.screens;
class Screens(Master) : UIScreen!(Master, Screens){//RNDContainer!(Master, Screens){
	//StartScreen!(typeof(this)) start_screen = null;
	Battlefield!(typeof(this)) battlefield = null;
	
	this(Master master){
		super(master);
		this.type = "Screens";
		this.name = "screens";
		
		//this.start_screen = new StartScreen!(typeof(this))(this);
		//this.add_slave(this.start_screen);
		
		this.battlefield = new Battlefield!(typeof(this))(this);
		this.add_slave(this.battlefield);
		//this.log();
	}
}
