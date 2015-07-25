module hud_layer.hud_layer;

import hud_layer;
class HUDLayer(Master) : RNDLayer!(Master, HUDLayer){
	public HUDMenu!(typeof(this)) hud_menu = null;
	
	this(Master master){
		super(master);
		this.type = "HUDLayer";
		this.name = "hud_layer";
		
		this.hud_menu = new HUDMenu!(typeof(this))(this);
		this.add_slave(this.hud_menu);
	}
}
