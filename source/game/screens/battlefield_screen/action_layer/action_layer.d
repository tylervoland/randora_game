module action_layer.action_layer;

import action_layer;
class ActionLayer(Master) : RNDLayer!(Master, ActionLayer){
	//import assets.game.images.finger;
	//import assets;
	Finger!(typeof(this)) finger = null;
	
	this(Master master){
		super(master);
		this.type = "ActionLayer";
		this.name = "action_layer";
		
		this.finger = new Finger!(typeof(this))(this);
	}
	
	override void on_init(){
		this.finger.init();
		super.on_init();
	}
	
	override void on_load(){
		this.finger.load();
		this.finger.position.x = 100;
		this.finger.position.y = 100;
		super.on_load();
	}
	
	override void on_update(){
		super.on_update();
		this.finger.update();
	}
	
	override void on_draw(){
		super.on_draw();
		this.finger.draw();
	}
}

