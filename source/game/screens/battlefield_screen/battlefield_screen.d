module game.screens.battlefield_screens.battlefield_screens;

import game.screens.battlefield_screens;
class BattlefieldScreens(Master) : RNDScreen!(Master, BattlefieldScreens){
	public Action!(typeof(this))	action = null;
	public Background!(typeof(this))	background = null;
	//public HUDLayer!(typeof(this))		hud_layer = null;
	public HUD!(typeof(this))			hud = null;
	
	this(Master master){
		super(master);
		this.type = "BattlefieldScreen";
		this.name = "battlefield_screen";
		
		this.background = new Background!(typeof(this))(this);
		this.add_slave(this.background);
		
		this.action = new Action!(typeof(this))(this);
		this.add_slave(this.action);
		
		//this.hud_layer = new HUDLayer!(typeof(this))(this);
		//this.add_slave(this.hud_layer);
		
		this.hud = new HUD!(typeof(this))(this);
		this.add_slave(this.hud);
	}
}
