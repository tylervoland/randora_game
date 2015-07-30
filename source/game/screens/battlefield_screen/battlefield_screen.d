module game.screens.battlefield_screen.battlefield_screen;

import game.screens.battlefield_screen;
class BattlefieldScreen(Master) : RNDScreen!(Master, BattlefieldScreen){
	public Action!(typeof(this))		action = null;
	public Background!(typeof(this))	background = null;
	public HUD!(typeof(this))			hud = null;
	
	this(Master master){
		super(master);
		this.type = "BattlefieldScreen";
		this.name = "battlefield_screen";
		
		this.action = new Action!(typeof(this))(this);
		this.add_slave(this.action);
		
		this.background = new Background!(typeof(this))(this);
		this.add_slave(this.background);
		
		this.hud = new HUD!(typeof(this))(this);
		this.add_slave(this.hud);
	}
}
