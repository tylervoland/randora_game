module game.windows.main_window.main_window;

import game.windows.main_window;
class MainWindow(Master) : UIWindow!(Master){
	public Assets!(typeof(this))	assets	= null;
	public Screens!(typeof(this))	screens	= null;
	
	import game.screens.battlefield;
	public Battlefield!(typeof(this))	battlefield	= null;
	
	this(Master master){
		super(master);
		
		//this.screens = new Screens!(typeof(this))(this);
		//this.add_slave(this.screens);
		
		this.battlefield = new Battlefield!(typeof(this))(this);
		this.add_member(this.battlefield);
		
		//this.assets = new Assets!(typeof(this))(this);
	}
}
