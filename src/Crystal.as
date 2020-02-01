package {
	import org.flixel.*;
	/**
	 * @author md101
	 */
	public class Crystal extends FlxSprite{
		[Embed(source = "../assets/imgs/supreme-tiles.png")] private var crystalPNG:Class;
		
		public function Crystal(x: Number, y: Number)
		{
			super(x * 40, y * 40, crystalPNG);
	
			loadGraphic(crystalPNG, true, true, 40, 40);
			addAnimation("idle", [17], 0, false);
			play("idle");
		}
		
		override public function update():void
		{
			angle += 1;
		}
	}
}
