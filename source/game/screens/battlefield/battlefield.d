module game.screens.battlefield.battlefield;

import game.screens.battlefield;
class Battlefield(Master) : UIScreen!(Master, Battlefield){
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
