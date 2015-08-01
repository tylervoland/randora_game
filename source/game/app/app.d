module game.app.app;

import game.app;
class App : UIApp!(App, App){
	//public Assets!(typeof(this))		assets		= null;
	//public Screens!(typeof(this))		screens		= null;
	public MainWindow!(typeof(this))	main_window	= null;
	
	this(){
		super();
		this.type = "App";
		this.name = "app";
		
		this.stretch.x = this.stretch.STRETCH.NONE;
		this.stretch.y = this.stretch.STRETCH.NONE;
		this.dimension.x = 640;
		this.dimension.y = 480;
		/+
		this.screens = new Screens!(typeof(this))(this);
		this.add_slave(this.screens);
		
		this.assets = new Assets!(typeof(this))(this);
		+/
		this.main_window = new MainWindow!(typeof(this))(this);
		assert(this.main_window !is null);
		this.add_slave(this.main_window);
	}
	
	@property{
		override ref typeof(this) app(){ return this; }
	}
}


