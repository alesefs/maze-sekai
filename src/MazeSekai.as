package {
	import org.flixel.*;
	/**
	 * @author md101
	 */
	
	[SWF(width = "600", height = "640", backgroundColor = "#000000")]
	[Frame(factoryClass="Preloader")]
	public class MazeSekai extends FlxGame{
		public function MazeSekai() {
			super(600, 640, MainMenus, 1);
			forceDebugger = false;	
		}
	}
}
