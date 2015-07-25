module screens.battlefield_screens.battlefield_screens;

import screens.battlefield_screens;
class BattlefieldScreens(Master) : RNDScreen!(Master, BattlefieldScreens){
	public ActionLayer!(typeof(this))		action_layer = null;
	public BackgroundLayer!(typeof(this))	background_layer = null;
	public HUDLayer!(typeof(this))			hud_layer = null;
	
	this(Master master){
		super(master);
		this.type = "BattlefieldScreen";
		this.name = "battlefield_screen";
		
		this.background_layer = new BackgroundLayer!(typeof(this))(this);
		this.add_slave(this.background_layer);
		
		this.action_layer = new ActionLayer!(typeof(this))(this);
		this.add_slave(this.action_layer);
		
		this.hud_layer = new HUDLayer!(typeof(this))(this);
		this.add_slave(this.hud_layer);
	}
}
