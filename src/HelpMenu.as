package {
	import caurina.transitions.Tweener;
	import org.flixel.*;
	/**
	 * @author md101
	 */
	public class HelpMenu extends FlxState{
		
		private var menus:Menus;
		private var playbtn:FlxButton;
		
		public function HelpMenu(){
			super();
		}
		
		override public function create (): void{
			super.create();			
			
			FlxG.mouse.show();			
			menus = new Menus;
			
			add(menus.bgimg);
					
			menus.logo.scale.x = menus.logo.scale.y = 0.5;
			add(menus.logo);
			
			playbtn = new FlxButton(Registry.sizes/2 - 100, Registry.sizes/2 + 150, "START", startGame);			
			playbtn.label.color = 0xDAA520;
			playbtn.label.shadow = 0xDAA520;
			add(playbtn);
			
			add(menus.infotxt);
			
			add(menus.mainInfotxt);
			
			add(menus.controlInfotxt);
			
			add(menus.liveInfotxt);
			
			add(menus.enemyInfotxt);
			
			add(menus.missionInfotxt);
			
			FlxG.playMusic(Registry.menu_snd, 0.75);
		}
		
		public function startGame():void{
			FlxG.mouse.hide();	
			FlxG.switchState(new PlayState);		
		}
		
		override public function update():void {
			super.update();
				
			Tweener.addTween(menus.logo, {x: 80, y: 80, time:0.5, transition:"linear"});
			Tweener.addTween(playbtn, {y: Registry.sizes/2 + 225, time:0.5, transition:"linear"});		
			Tweener.addTween(menus.infotxt, {x: Registry.sizes/2 - 100, time:0.5, transition:"linear"});
			Tweener.addTween(menus.mainInfotxt, {x: Registry.tileweight, time:0.5, transition:"linear"});
			Tweener.addTween(menus.controlInfotxt, {x: Registry.tileweight*5, time:0.5, transition:"linear"});
			Tweener.addTween(menus.liveInfotxt, {x: Registry.tileweight, time:0.5, transition:"linear"});
			Tweener.addTween(menus.enemyInfotxt, {x: Registry.tileweight*5, time:0.5, transition:"linear"});
			Tweener.addTween(menus.missionInfotxt, {x: Registry.tileweight, time:0.5, transition:"linear"});
		}
		
	}
}
