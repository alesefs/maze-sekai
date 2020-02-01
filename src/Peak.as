package {
	import org.flixel.*;
	/**
	 * @author md101
	 */
	public class Peak extends FlxSprite{
		[Embed(source = "../assets/imgs/supreme-tiles.png")] private var peakPNG:Class;
		
		public function Peak(x: Number, y: Number)
		{
			super(x * 40, y * 40, peakPNG);
			
			solid = true;
			immovable = true;

			loadGraphic(peakPNG, true, true, 40, 40);
			addAnimation("idle", [30], 0, false);
			addAnimation("stack", [31], 0, false);
			addAnimation("nill", [9], 0, false);
			addAnimation("spike", [2], 0, false);
			
		}
		
		override public function update():void
		{
			if(x <= Registry.tileweight*29 || x >= Registry.tileweight*45 && x <= Registry.tileweight*59){
				if(Math.round(Registry.timerStack) % 3 == 0){
					play("stack");
				} else {
					play("idle");
				}
			} else {
				if(Math.round(Registry.timerStack) % 3 == 0){
					play("spike");
				} else {
					play("nill");
				}
			}
		}
	}
}
