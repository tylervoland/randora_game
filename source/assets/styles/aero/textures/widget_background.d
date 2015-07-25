module assets.game.styles.aero.textures.widget_background;

import assets.game.styles.aero.textures;
class WidgetBackground(Master) : RNDImage!(Master){
	this(Master master){
		super(master, AERO_TEXTURES_DIRECTORY, "widget_background.png");
		this.type = "WidgetBackground";
		this.name = "widget_background";
	}
}
