module start_screen.start_screen;

import start_screen;
class StartScreen(Master) : RNDScreen!(Master, StartScreen){
	this(Master master){
		super(master);
	}
}
