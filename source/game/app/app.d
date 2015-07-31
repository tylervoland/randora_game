module game.app.app;

import game.app;
class App : UIApp!(App, App){
	Screens!(App) screens = null;
	
	Assets!(typeof(this)) _assets = null;
	
	this(){
		super();
		this.type = "App";
		this.name = "app";
		this.screens = new Screens!(typeof(this))(this);
		this.add_slave(this.screens);
		
		this._assets = new Assets!(typeof(this))(this);
	}
	
	@property{
		override ref App root(){ return this; }
	}
}


