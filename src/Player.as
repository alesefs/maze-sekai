package {
	import org.flixel.*;
	/**
	 * @author md101
	 */
	public class Player extends FlxSprite{
		
		[Embed(source = "../assets/imgs/hikari.png")] private var hikariPNG:Class;
		
		public function Player(x: Number, y: Number)
		{
			super(x, y, hikariPNG);
			
			loadGraphic(hikariPNG, true, true, 30, 30);
			addAnimation("idle", [0], 0, false);
			addAnimation("walk", [2, 1], 5 , false);
			addAnimation("dead", [3], 0 , false);
		}
		
		override public function update():void
		{	
			/*if(angle == 0){
				offset.x = 5;
				offset.y = 0;
				width = 20;
				height = 28;
			} else if (angle == 90){
				offset.x = 0;
				offset.y = 5;
				width = 30;
				height = 20;	
			} else if (angle == -90){
				offset.x = 0;
				offset.y = 5;
				width = 30;
				height = 20;	
			} else if (angle == 180){
				offset.x = 5;
				offset.y = 2;
				width = 20;
				height = 28;	
			}*/
			
			velocity.x = velocity.y = 0;
			
			if(Registry.playerIsAlive == true){
				if (FlxG.keys.pressed("UP") || FlxG.keys.pressed("W")){
					velocity.y = -100;
					angle = 90;
				} else if (FlxG.keys.pressed("DOWN") || FlxG.keys.pressed("S")){
					velocity.y = 100;
					angle = -90;
				} else if (FlxG.keys.pressed("RIGHT") || FlxG.keys.pressed("D")){
					velocity.x = 100;
					angle = 180;
				} else if (FlxG.keys.pressed("LEFT") || FlxG.keys.pressed("A")){
					velocity.x = -100;
					angle = 0;				
				}
				
				if(velocity.x != 0 || velocity.y != 0){
					play("walk");
				} else {
					play("idle");
				}
			} else {
				velocity.x = velocity.y = 0;
				play("dead");
			}
		
		}
	}
}
