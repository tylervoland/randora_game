module assets.game.styles.aero.textures.widget_border;

import assets.game.styles.aero.textures;
class WidgetBorder(Master) : RNDImage!(Master){
	this(Master master){
		super(master, AERO_TEXTURES_DIRECTORY, "widget_border.png");
		this.type = "WidgetBorder";
		this.name = "widget_border";
	}
}
