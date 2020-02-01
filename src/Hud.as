package {
	import org.flixel.*;
	/**
	 * @author md101
	 */
	public class Hud extends FlxGroup{
		
		public var lives_txt:FlxText;
		public var mission_txt:FlxText;
		public var score_txt:FlxText;
		public var hud_shine:FlxSprite;
		public var heart:Heart;
		public var task:Heart;
		public var crystal:Crystal;
		
		public var pause:FlxSprite;
		
		public function Hud(){
			super();
			
			hud_shine = new FlxSprite(0, 0);
			hud_shine.makeGraphic(1, 40);
			hud_shine.scrollFactor.x = hud_shine.scrollFactor.y = 0;
			add(hud_shine);

			lives_txt = new FlxText(Registry.tileweight*1.75, Registry.tileweight*0.25, 250);
			lives_txt.setFormat(null, 20, 0xfff8f8ff, "left");
			lives_txt.scrollFactor.x = lives_txt.scrollFactor.y = 0;
			add(lives_txt);
			
			heart = new Heart(Registry.tileweight*0.75, Registry.tileweight*0);
			heart.scrollFactor.x = heart.scrollFactor.y = 0;
			heart.play("heart");
			add(heart);

			mission_txt = new FlxText(Registry.tileweight*8, Registry.tileweight*0.25, 400);
			mission_txt.setFormat(null, 20, 0xfff8f8ff, "left");
			mission_txt.scrollFactor.x = mission_txt.scrollFactor.y = 0;
			add(mission_txt);
			
			task = new Heart(Registry.tileweight*7, Registry.tileweight*0);
			task.scrollFactor.x = task.scrollFactor.y = 0;
			task.play("task");
			add(task);
			
			score_txt = new FlxText(Registry.tileweight*5, Registry.tileweight*0.25, 400);
			score_txt.setFormat(null, 20, 0xfff8f8ff, "left");
			score_txt.scrollFactor.x = score_txt.scrollFactor.y = 0;
			add(score_txt);
			
			crystal = new Crystal((Registry.tileweight*4)/40, Registry.tileweight*0);
			crystal.scrollFactor.x = crystal.scrollFactor.y = 0;
			add(crystal);
			
			pause = new FlxSprite(Registry.tileweight*3.75, Registry.tileweight*3.5, Registry.pause);
			pause.scrollFactor.x = pause.scrollFactor.y = 0;
					
		}
		
		override public function update():void
		{
			crystal.angle = 0;
		}
	}
}
