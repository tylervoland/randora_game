module game.layers.background.background;

import game.layers.background;
class Background(Master) : RNDLayer!(Master, Background){
	Grunge!(typeof(this))	background	= null;
	SunBeam!(typeof(this))	sunbeam		= null;
	SunBeam!(typeof(this))	sunbeam2	= null;
	
	this(Master master){
		super(master);
		this.type = "BackgroundLayer";
		this.name = "background_layer";
		
		this.background	= new Grunge!(typeof(this))(this);
		this.sunbeam	= new SunBeam!(typeof(this))(this);
		this.sunbeam2	= new SunBeam!(typeof(this))(this);
	}
	
	override void on_init(){
		this.background.contents.color.red		= 0x41;
		this.background.contents.color.green	= 0x69;
		this.background.contents.color.blue		= 0xAE;
		
		this.background.image.color.red		= 0xCC;
		this.background.image.color.green	= 0xDD;
		this.background.image.color.blue	= 0xFF;
		this.background.image.color.alpha	= 0x88;
		this.background.init();
		
		this.sunbeam.init();
		this.sunbeam.image.color.alpha	= 0x88;
		
		this.sunbeam2.init();
		this.sunbeam2.dimension.x	= 100;
		this.sunbeam2.position.x	= 75;
		this.sunbeam2.image.color.alpha	= 0x44;
		
		super.on_init();
	}
	
	override void on_load(){
		this.background.load();
		this.sunbeam.load();
		this.sunbeam2.load();
		super.on_load();
	}
	
	override void on_update(){
		super.on_update();
		this.background.update();
		this.sunbeam.update();
		this.sunbeam2.update();
	}
	
	override void on_draw(){
		this.background.draw();
		this.sunbeam.draw();
		this.sunbeam2.draw();
		super.on_draw();
	}
}
