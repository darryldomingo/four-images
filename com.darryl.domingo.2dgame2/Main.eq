
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : SEScene
{
	SESprite image1;
	SESprite image2;
	SESprite image3;
	SESprite image4;
	SESprite text;
	double transparency = 0;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_sprite_for_color(Color.instance("red"), get_scene_width(), get_scene_height());
		rsc.prepare_image("captainamerica", "avenger1", get_scene_width()*0.5, get_scene_height()*0.5);
		image1 = add_sprite_for_image(SEImage.for_resource("captainamerica"));
		image1.move(0,0);
		
		rsc.prepare_image("thor", "avenger2", get_scene_width()*0.5, get_scene_height()*0.5);
		image2 = add_sprite_for_image(SEImage.for_resource("thor"));
		image2.move(0, get_scene_height()*0.5);
		
		rsc.prepare_image("hulk", "avenger3", get_scene_width()*0.5, get_scene_height()*0.5);
		image3 = add_sprite_for_image(SEImage.for_resource("hulk"));
		image3.move(get_scene_width()*0.5, 0);
		
		rsc.prepare_image("ironman", "avenger4", get_scene_width()*0.5, get_scene_height()*0.5);
		image4 = add_sprite_for_image(SEImage.for_resource("ironman"));
		image4.move(get_scene_width()*0.5, get_scene_height()*0.5);

		rsc.prepare_font("myfont", "arial bold color=black", 40);
		text = add_sprite_for_text("AVENGERS", "myfont");
		text.move(0,0);
	}

	public void on_key_press(String name, String str) {
		base.on_key_press(name,str);
		text.set_text("on_key_press");
		
	}

	public void on_key_release(String name, String str) {
		base.on_key_release(name,str);
		text.set_text("on_key_release");
		
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if(pi.is_inside(0,0,0.5*get_scene_width(),0.5*get_scene_height())) {
			text.set_text("captain america");
			text.move(0.25*get_scene_width()-text.get_width()*0.5, 0.25*get_scene_height()-0.5*text.get_height());
			image1.set_alpha(0.5);
			image2.set_alpha(1);
			image3.set_alpha(1);
			image4.set_alpha(1);
			
		}
	//	text.set_text("on_pointer_press");

		else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(),0.5*get_scene_height())) {
			text.set_text("hulk");
			text.move(0.75*get_scene_width()-text.get_width()*0.5, 0.25*get_scene_height()-0.5*text.get_height());
			image1.set_alpha(1);
			image2.set_alpha(1);
			image3.set_alpha(0.5);
			image4.set_alpha(1);
		
	}

		else if(pi.is_inside(0,0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			text.set_text("thor");
			text.move(0.25*get_scene_width()-text.get_width()*0.5, 0.75*get_scene_height()-0.5*text.get_height());
			image1.set_alpha(1);
			image2.set_alpha(0.5);
			image3.set_alpha(1);
			image4.set_alpha(1);
		
	}

		else if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			text.set_text("ironman");
			text.move(0.75*get_scene_width()-text.get_width()*0.5, 0.75*get_scene_height()-0.5*text.get_height());
			image1.set_alpha(1);
			image2.set_alpha(1);
			image3.set_alpha(1);
			image4.set_alpha(0.5);
		
	}
}

	public void set_alpha(double alpha) {
		transparency = alpha;
	} 
}