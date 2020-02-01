package {
	import org.flixel.*;
	import flash.display.*;
	
	/**
	 * @author md101
	 */
	public class MainMenus extends FlxState{
		
		private var menus:Menus;
		private var playbtn:FlxButton;
				
		public function MainMenus(){
			super();
		}
		
		override public function create (): void{
			super.create();		
			FlxG.stage.scaleMode = StageScaleMode.EXACT_FIT;	
			FlxG.mouse.show();
			//menu itens
			menus = new Menus;
			
			add(menus.bgimg);
			
			add(menus.logo);
			
			playbtn = new FlxButton(Registry.sizes/2 - 100, Registry.sizes/2 + 200, "START", startHelp);			
			playbtn.label.color = 0xDAA520;
			playbtn.label.shadow = 0xDAA520;
			add(playbtn);
			
			FlxG.playMusic(Registry.menu_snd, 0.75);
					
		}
		
		public function startHelp():void{
			FlxG.switchState(new HelpMenu);
		}
		
		override public function update():void {
			super.update();
		}
	}
}