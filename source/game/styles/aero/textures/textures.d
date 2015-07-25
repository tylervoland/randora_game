module resources.aero.textures;

import rnd.resource.texture;
class AeroTextures(Master) : RNDTexture!(Master){
	this(Master master, string file){
		super(
			master,
			"./source/game/styles/aero/textures/",
			file
		);
	}
}

class Solid(Master) : AeroTextures!(Master){
	this(Master master){
		super(
			master,
			"solid.png"
		);
	}
}

class Black(Master) : AeroTextures!(Master){
	this(Master master){
		super(
			master,
			"black.png"
		);
	}
}

class Blue(Master) : AeroTextures!(Master){
	this(Master master){
		super(
			master,
			"blue.png"
		);
	}
}

class Green(Master) : AeroTextures!(Master){
	this(Master master){
		super(
			master,
			"green.png"
		);
	}
}

class Grunge(Master) : AeroTextures!(Master){
	this(Master master){
		super(
			master,
			"grunge.png"
		);
	}
}

class Red(Master) : AeroTextures!(Master){
	this(Master master){
		super(
			master,
			"red.png"
		);
	}
}

class Sunbeam(Master) : AeroTextures!(Master){
	this(Master master){
		super(
			master,
			"sunbeam.png"
		);
	}
}

class White(Master) : AeroTextures!(Master){
	this(Master master){
		super(
			master,
			"white.png"
		);
	}
}

class WidgetBackground(Master) : AeroTextures!(Master){
	this(Master master){
		super(
			master,
			"widget_background.png"
		);
	}
}

class WidgetBorder(Master) : AeroTextures!(Master){
	this(Master master){
		super(
			master,
			"widget_border.png"
		);
	}
}
