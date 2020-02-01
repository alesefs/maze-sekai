package {
	import org.flixel.*;
	/**
	 * @author md101
	 */
	public class Menus extends FlxGroup{
		
		public var bgimg : FlxTilemap;
		public var logo:FlxSprite;
		public var infotxt:FlxText;	
		public var mainInfotxt:FlxText;	
		public var controlInfotxt:FlxText;	
		public var enemyInfotxt:FlxText;	
		public var missionInfotxt:FlxText;	
		public var liveInfotxt:FlxText;	
		public var winmsg:FlxText;
		public var winmsg2:FlxText;
		public var losemsg:FlxText;	
		public var losemsg2:FlxText;	
		
		public function Menus(){
			super();
			
			bgimg = new FlxTilemap;
			bgimg.loadMap(new Registry.bgimgCSV, Registry.bgimgPNG, 40, 40, 0, 0, 0, 0);
			
			logo = new FlxSprite(Registry.sizes/2, Registry.sizes/2 - 25, Registry.logoSekai);
			logo.offset.x = logo.width/2;
			logo.offset.y = logo.height/2;
			
			infotxt = new FlxText(Registry.tileweight*15, Registry.tileweight, 300, "HOW TO PLAY");
			infotxt.setFormat(null, 36, 0xFFD700, "left", 0xDAA520);
			
			mainInfotxt = new FlxText(-Registry.tileweight*5, Registry.tileweight*4.5, 350, "Help Hikari to find the Sekai Crystal Box!");
			mainInfotxt.setFormat(null, 24, 0xF8F8FF, "left");
			
			controlInfotxt = new FlxText(Registry.tileweight*15, Registry.tileweight*6.5, 350, "ARROW KEYS / WASD to move Hikari and P / ESC for pause.");
			controlInfotxt.setFormat(null, 24, 0xF8F8FF, "right");
			
			liveInfotxt = new FlxText(Registry.tileweight*15, Registry.tileweight*8.5, 350, "35 fragments = 1 extra life!");
			liveInfotxt.setFormat(null, 24, 0xF8F8FF, "left");
			
			enemyInfotxt = new FlxText(-Registry.tileweight*15, Registry.tileweight*10, 350, "BEWARE! Enemies and spikes can kill.");
			enemyInfotxt.setFormat(null, 24, 0xF8F8FF, "right");
			
			missionInfotxt = new FlxText(Registry.tileweight*5, Registry.tileweight*11.5, 350, "Complete the tasks and GG.");
			missionInfotxt.setFormat(null, 24, 0xF8F8FF, "left");
			
			winmsg = new FlxText(Registry.sizes/2, Registry.sizes/2 - 50, 450, "CONGRATULATIONS");
			winmsg.offset.x = winmsg.width/2;
			winmsg.setFormat(null, 42, 0xFFD700, "center", 0xDAA520);
			
			winmsg2 = new FlxText(Registry.sizes/2, Registry.sizes/2 + 50, 450, "Today you won... \n More challenges is coming!");
			winmsg2.offset.x = winmsg.width/2;
			winmsg2.setFormat(null, 20, 0xFFD700, "center", 0xDAA520);
			
			losemsg = new FlxText(Registry.sizes/2, Registry.sizes/2 - 50, 450, "YOU FAILED");
			losemsg.offset.x = losemsg.width/2;
			losemsg.setFormat(null, 42, 0xFF0000, "center", 0x8B0000);
			
			losemsg2 = new FlxText(Registry.sizes/2, Registry.sizes/2 + 50, 450, "Try again... \n And train for new challenges!");
			losemsg2.offset.x = losemsg.width/2;
			losemsg2.setFormat(null, 20, 0xFF0000, "center", 0x8B0000);	
		}
		
		
	}
}
