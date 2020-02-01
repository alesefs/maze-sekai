package {
	import org.flixel.*;
	/**
	 * @author md101
	 */
	public class GameWon extends FlxState{
		
		private var menus:Menus;
		public var menubtn:FlxButton;
		
		private var emitter:FlxEmitter;
		private var particles:int = 1;

		public function GameWon(){
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
			
			add(menus.winmsg);
			add(menus.winmsg2);
			
			menubtn = new FlxButton(Registry.sizes/2 - 100, Registry.sizes/2 + 225, "MENU", startMenu);			
			menubtn.label.color = 0xDAA520;
			menubtn.label.shadow = 0xDAA520;
			add(menubtn);
			
			if(Registry.chance >= 0){
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
			}
			
			FlxG.playMusic(Registry.win_snd, 0.3);
		}
		
		public function startMenu():void{
			FlxG.switchState(new MainMenus);
		}
		
		override public function update():void {
			super.update();
			
			emitter = new FlxEmitter(Registry.sizes/2, Registry.sizes/2);
			for(var i:int = 0; i < particles; i++)
			{
				var particle:FlxParticle = new FlxParticle();
				particle.makeGraphic(1, 1, 0xFFFFFFFF);
				particle.exists = false;
				emitter.add(particle);
			}	 
			add(emitter);
			emitter.start();
		}
	}
}