module hud_layer.xbox;
/+
import rnd.container.context_menu;
class XBox(Master) : RNDContextMenu!(Master, XBox){
	this(Master master){
		super(master);
	}
	
	override void on_load(){
		super.on_load();
		/+
		this.box.margin.spacing					= 3;
		this.box.margin.border.spacing			= 3;
		this.box.margin.border.padding.spacing	= 3;
		
		this.box.margin.fill_color.red					= 0x00;
		this.box.margin.border.fill_color.green			= 0xFF;
		this.box.margin.border.padding.fill_color.blue	= 0x00;
		
		this.box.margin.border.padding.contents.fill_color.red		= 0xFF;
		this.box.margin.border.padding.contents.fill_color.green	= 0x00;
		this.box.margin.border.padding.contents.fill_color.blue		= 0xFF;
		
		this.box.position.x		= 0;
		this.box.position.y		= 0;
		this.box.dimension.x	= 100;
		this.box.dimension.y	= 30;
		
		this.box.stretch.x = this.box.stretch.STRETCH.EXPAND;
		this.box.stretch.y = this.box.stretch.STRETCH.THIRD;
		//this.box.stretch();
		
		this.box.alignment.y = this.box.alignment.ALIGNMENT.BOTTOM;
		+/
		this.margin.spacing					= 3;
		this.margin.border.spacing			= 3;
		this.margin.border.padding.spacing	= 3;
		
		this.margin.fill_color.red					= 0x00;
		this.margin.border.fill_color.green			= 0xFF;
		this.margin.border.padding.fill_color.blue	= 0x00;
		
		this.margin.border.padding.contents.fill_color.red		= 0xFF;
		this.margin.border.padding.contents.fill_color.green	= 0x00;
		this.margin.border.padding.contents.fill_color.blue		= 0xFF;
		
		this.position.x		= 0;
		this.position.y		= 0;
		this.dimension.x	= 100;
		this.dimension.y	= 30;
		
		this.stretch.x = this.stretch.STRETCH.EXPAND;
		this.stretch.y = this.stretch.STRETCH.THIRD;
		//this.box.stretch();
		
		this.alignment.y = this.alignment.ALIGNMENT.BOTTOM;
		//this.print();
	}
}
+/
