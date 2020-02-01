package {
	import org.flixel.*;
	/**
	 * @author md101
	 */
	public class GameOver extends FlxState{
		
		private var menus:Menus;
		public var menubtn:FlxButton;

		public function GameOver(){
			super();
		}
		
		override public function create (): void{
			super.create();			
			FlxG.mouse.show();
			//menu itens
			menus = new Menus;
			
			add(menus.bgimg);
			
			menus.logo.scale.x = menus.logo.scale.y = 0.5;
			menus.logo.x = Registry.sizes/2;
			menus.logo.y = 100;
			add(menus.logo);
			
			add(menus.losemsg);
			add(menus.losemsg2);
			
			menubtn = new FlxButton(Registry.sizes/2 - 100, Registry.sizes/2 + 225, "MENU", startMenu);			
			menubtn.label.color = 0xDAA520;
			menubtn.label.shadow = 0xDAA520;
			add(menubtn);
			
			if(Registry.chance == 0){
				Registry.score = 0;
				Registry.stages = 0;
				Registry.timerStack = 0;
				Registry.lives = 3;
				Registry.meta = 0;
				Registry.keyCollect = false;
				Registry.btnClose = 0;
				Registry.playerIsAlive = true;
				Registry.animationTime = 0;
				Registry.hudTime = 0;
			 	Registry.youWon = false;
			} else {
				Registry.score = 0;
				Registry.stages = 0;
				Registry.timerStack = 0;
				Registry.lives = 4;
				Registry.meta = 0;
				Registry.keyCollect = false;
				Registry.btnClose = 0;
				Registry.playerIsAlive = true;
				Registry.animationTime = 0;
				Registry.hudTime = 0;
				Registry.youWon = false;
			}
			
			FlxG.play(Registry.gameover_snd, 0.3, false);
		}
		
		public function startMenu():void{
			FlxG.switchState(new MainMenus);
		}
		
		override public function update():void {
			super.update();
		}
	}
}