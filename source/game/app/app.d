module game.app.app;

import game.app;
class App : BaseApp!(App, App){
	Screens!(App) screens = null;
	
	import assets;
	Assets!(typeof(this)) _assets = null;
	
	this(){
		super();
		this.type = "App";
		this.name = "app";
		this.screens = new Screens!(typeof(this))(this);
		this.add_slave(this.screens);
		
		this._assets = new Assets!(typeof(this))(this);
	}
	
	override void on_init(){
		super.on_init();
		//this.log_p();
	}
	
	@property{
		override ref App root(){ return this; }
	}
}


