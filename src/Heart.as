package {
	import org.flixel.*;
	/**
	 * @author md101
	 */
	public class Heart extends FlxSprite{
		[Embed(source = "../assets/imgs/supreme-tiles.png")] private var heartPNG:Class;
		
		public function Heart(x: Number, y: Number)
		{
			super(x, y, heartPNG);
			
			solid = true;
			immovable = true;
			
			loadGraphic(heartPNG, true, true, 40, 40);
			addAnimation("heart", [16], 0, false);
			addAnimation("task", [7], 0, false);
			//play("idle");
		}
	}
}
