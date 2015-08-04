module game.windows.main_window.main_window;

import game.windows.main_window;
class MainWindow(Master) : UIWindow!(Master, MainWindow){
	public Screens!(typeof(this))	screens	= null;
	
	this(Master master){
		super(master);
		this.name = "Main Window";
		this.type = "MainWindow";
		
		this.screens = new Screens!(typeof(this))(this);
		this.add_slave(this.screens);
	}
}
