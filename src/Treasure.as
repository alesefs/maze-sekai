package {
	import org.flixel.*;
	/**
	 * @author md101
	 */
	public class Treasure extends FlxSprite{
		[Embed(source = "../assets/imgs/supreme-tiles.png")] private var treasurePNG:Class;
		
		public function Treasure(x: Number, y: Number)
		{
			super(x, y, treasurePNG);
			
			solid = true;
			immovable = true;
			
			loadGraphic(treasurePNG, true, true, 40, 40);
			addAnimation("idle", [23], 0, false);
			addAnimation("open", [24], 0, false);
			play("idle");
		}
	}
}
