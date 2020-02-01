package {
	import org.flixel.*;
	/**
	 * @author md101
	 */
	public class CloseDoor extends FlxSprite{
		[Embed(source = "../assets/imgs/supreme-tiles.png")] private var closedoorPNG:Class;
		
		public function CloseDoor(x: Number, y: Number)
		{
			super(x * 40 + 30, y * 40, closedoorPNG);
			
			solid = true;
			immovable = true;
			alpha = 0;
			
			loadGraphic(closedoorPNG, true, true, 40, 40);
			addAnimation("idle", [25], 0, false);
			play("idle");
		}
	}
}
