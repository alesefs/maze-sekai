package {
	import org.flixel.*;
	/**
	 * @author md101
	 */
	public class Door extends FlxSprite{
		[Embed(source = "../assets/imgs/supreme-tiles.png")] private var doorPNG:Class;
		
		public function Door(x: Number, y: Number)
		{
			super(x * 40, y * 40, doorPNG);
			
			solid = true;
			immovable = true;
			
			loadGraphic(doorPNG, true, true, 40, 40);
			addAnimation("idle", [29], 0, false);
			play("idle");
		}
	}
}
