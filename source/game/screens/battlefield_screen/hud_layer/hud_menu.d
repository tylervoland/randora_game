module hud_layer.hud_menu;

import hud_layer;
class HUDMenu(Master) : RNDContextMenu!(Master, HUDMenu){
	//public XBox!(typeof(this)) xbox = null;
	
	import assets.game.styles.aero.textures;
	WidgetBackground!(typeof(this)) background = null;
	
	this(Master master){
		super(master);
		this.type = "HUDMenu";
		this.name = "hud_menu";
		//this.xbox = new XBox!(typeof(this))(this);
		//this.add_slave(this.xbox);
		
		this.background = new WidgetBackground!(typeof(this))(this);
	}
	
	override void on_init(){
		this.background.init();
		this.background.stretch.x	= this.background.stretch.STRETCH.EXPAND;
		this.background.stretch.y	= this.background.stretch.STRETCH.THIRD;
		this.background.alignment.x	= this.background.alignment.ALIGNMENT.LEFT;
		this.background.alignment.y	= this.background.alignment.ALIGNMENT.TOP;
		
		this.margin.spacing		= 3;
		this.border.spacing		= 3;
		this.padding.spacing	= 3;
		
		this.margin.color.red	= 0xFF;
		this.margin.color.green	= 0xFF;
		this.margin.color.blue	= 0xFF;
		this.margin.color.alpha	= 0x44;
		
		this.border.color.red	= 0x00;
		this.border.color.green	= 0x00;
		this.border.color.blue	= 0x00;
		this.border.color.alpha	= 0xFF;
		
		this.contents.color.red		= 0xFF;
		this.contents.color.green	= 0xFF;
		this.contents.color.blue	= 0xFF;
		this.contents.color.alpha	= 0x22;
		
		this.stretch.x = this.stretch.STRETCH.HALF;
		this.stretch.y = this.stretch.STRETCH.HALF;
		
		this.alignment.x	= this.background.alignment.ALIGNMENT.CENTER;
		this.alignment.y	= this.background.alignment.ALIGNMENT.CENTER;
		super.on_init();
	}
	
	override void on_load(){
		this.background.load();
		super.on_load();
	}
	
	override void on_update(){
		super.on_update();
		this.background.update();
	}
	
	override void on_draw(){
		this.background.draw();
		super.on_draw();
	}
}

