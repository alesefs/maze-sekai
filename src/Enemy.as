package {
	import caurina.transitions.Tweener;
	import org.flixel.*;
	/**
	 * @author md101
	 */
	public class Enemy extends FlxSprite{
		
		[Embed(source = "../assets/imgs/irakih.png")] private var irakihPNG:Class;
		
		public function Enemy(x: Number, y: Number)
		{
			super(x * 40, y * 40, irakihPNG);
			
			solid = true;

			loadGraphic(irakihPNG, true, true, 30, 30);
			addAnimation("idle", [0], 0, false);
			addAnimation("walk", [1, 2], 5, true);
			
			move1();
		}
		
		private function move1():void
		{
			if(x >= Registry.tileweight*8 && x <= Registry.tileweight*14
			&& y >= Registry.tileweight*5 && y <= Registry.tileweight*12){
				Tweener.addTween(this, {y: Registry.tileweight*11.15, time: 1.5, transition:"linear", onComplete:move2});
				angle = -90;
				play("walk");
			}
			else if(x >= Registry.tileweight*25 && x <= Registry.tileweight*29
			&& y >= Registry.tileweight && y <= Registry.tileweight*7){
				Tweener.addTween(this, {x: Registry.tileweight*28.15, time: 1.5, transition:"linear", onComplete:move2});
				angle = 180;
				play("walk");
			}
			else if(x >= Registry.tileweight*21 && x <= Registry.tileweight*28
			&& y >= Registry.tileweight*8 && y <= Registry.tileweight*13){
				Tweener.addTween(this, {x: Registry.tileweight*27.15, time: 1.5, transition:"linear", onComplete:move2});
				angle = 180;
				play("walk");
			}
			else if(x >= Registry.tileweight*38 && x <= Registry.tileweight*44
			&& y >= Registry.tileweight && y <= Registry.tileweight*6){
				Tweener.addTween(this, {y: Registry.tileweight*2.15, time: 1.5, transition:"linear", onComplete:move2});
				angle = 90;
				play("walk");
			}
			else if(x >= Registry.tileweight*34 && x <= Registry.tileweight*40
			&& y >= Registry.tileweight*5 && y <= Registry.tileweight*10){
				Tweener.addTween(this, {y: Registry.tileweight*6.15, time: 1.5, transition:"linear", onComplete:move2});
				angle = 90;
				play("walk");
			}
			else if(x >= Registry.tileweight*48 && x <= Registry.tileweight*55
			&& y >= Registry.tileweight*4 && y <= Registry.tileweight*10){
				Tweener.addTween(this, {x: Registry.tileweight*54.15, time: 1.5, transition:"linear", onComplete:move2});
				angle = 180;
				play("walk");
			}
			else if(x >= Registry.tileweight*48 && x <= Registry.tileweight*55
			&& y >= Registry.tileweight*9 && y <= Registry.tileweight*15){
				Tweener.addTween(this, {y: Registry.tileweight*10.15, time: 1.5, transition:"linear", onComplete:move2});
				angle = 90;
				play("walk");
			}
			else if(x >= Registry.tileweight*64 && x <= Registry.tileweight*70
			&& y >= Registry.tileweight*5 && y <= Registry.tileweight*11){
				Tweener.addTween(this, {y: Registry.tileweight*10.15, time: 1.5, transition:"linear", onComplete:move2});
				angle = -90;
				play("walk");
			}
			else if(x >= Registry.tileweight*75 && x <= Registry.tileweight*80
			&& y >= Registry.tileweight*4 && y <= Registry.tileweight*9){
				Tweener.addTween(this, {y: Registry.tileweight*8.15, time: 1.5, transition:"linear", onComplete:move2});
				angle = -90;
				play("walk");
			}
			else if(x >= Registry.tileweight*75 && x <= Registry.tileweight*80
			&& y >= Registry.tileweight*8 && y <= Registry.tileweight*13){
				Tweener.addTween(this, {x: Registry.tileweight*76.15, time: 1.5, transition:"linear", onComplete:move2});
				angle = 0;
				play("walk");
			}
			else if(x >= Registry.tileweight*80 && x <= Registry.tileweight*82
			&& y >= Registry.tileweight*3 && y <= Registry.tileweight*15){
				Tweener.addTween(this, {y: Registry.tileweight*14.15, time: 5, transition:"linear", onComplete:move2});
				angle = -90;
				play("walk");
			}
			else if(x >= Registry.tileweight*82 && x <= Registry.tileweight*89
			&& y >= Registry.tileweight*6 && y <= Registry.tileweight*8){
				Tweener.addTween(this, {x: Registry.tileweight*88.15, time: 3.5, transition:"linear", onComplete:move2});
				angle = 180;
				play("walk");
			}
		}
		
		private function move2():void
		{
			if(x >= Registry.tileweight*8 && x <= Registry.tileweight*14
			&& y >= Registry.tileweight*5 && y <= Registry.tileweight*12){
				Tweener.addTween(this, {x: Registry.tileweight*13.15, time: 1, transition:"linear", onComplete:move3});
				angle = 180;
				play("walk");
			}
			else if(x >= Registry.tileweight*25 && x <= Registry.tileweight*29
			&& y >= Registry.tileweight && y <= Registry.tileweight*7){
				Tweener.addTween(this, {y: Registry.tileweight*2.15, time: 1.5, transition:"linear", onComplete:move3});
				angle = 90;
				play("walk");
			}
			else if(x >= Registry.tileweight*21 && x <= Registry.tileweight*28
			&& y >= Registry.tileweight*8 && y <= Registry.tileweight*13){
				Tweener.addTween(this, {y: Registry.tileweight*12.15, time: 1.5, transition:"linear", onComplete:move3});
				angle = -90;
				play("walk");
			}
			else if(x >= Registry.tileweight*38 && x <= Registry.tileweight*44
			&& y >= Registry.tileweight && y <= Registry.tileweight*6){
				Tweener.addTween(this, {x: Registry.tileweight*43.15, time: 1.5, transition:"linear", onComplete:move3});
				angle = 180;
				play("walk");
			}
			else if(x >= Registry.tileweight*34 && x <= Registry.tileweight*40
			&& y >= Registry.tileweight*5 && y <= Registry.tileweight*10){
				Tweener.addTween(this, {x: Registry.tileweight*39.15, time: 1.5, transition:"linear", onComplete:move3});
				angle = 180;
				play("walk");
			}
			else if(x >= Registry.tileweight*48 && x <= Registry.tileweight*55
			&& y >= Registry.tileweight*4 && y <= Registry.tileweight*10){
				Tweener.addTween(this, {y: Registry.tileweight*9.15, time: 1.5, transition:"linear", onComplete:move3});
				angle = -90;
				play("walk");
			}
			else if(x >= Registry.tileweight*48 && x <= Registry.tileweight*55
			&& y >= Registry.tileweight*9 && y <= Registry.tileweight*15){
				Tweener.addTween(this, {x: Registry.tileweight*54.15, time: 1.5, transition:"linear", onComplete:move3});
				angle = 180;
				play("walk");
			}
			else if(x >= Registry.tileweight*64 && x <= Registry.tileweight*70
			&& y >= Registry.tileweight*5 && y <= Registry.tileweight*11){
				Tweener.addTween(this, {x: Registry.tileweight*69.15, time: 1.5, transition:"linear", onComplete:move3});
				angle = 180;
				play("walk");
			}
			else if(x >= Registry.tileweight*75 && x <= Registry.tileweight*80
			&& y >= Registry.tileweight*4 && y <= Registry.tileweight*9){
				Tweener.addTween(this, {x: Registry.tileweight*79.15, time: 1.5, transition:"linear", onComplete:move3});
				angle = 180;
				play("walk");
			}
			else if(x >= Registry.tileweight*75 && x <= Registry.tileweight*80
			&& y >= Registry.tileweight*8 && y <= Registry.tileweight*13){
				Tweener.addTween(this, {y: Registry.tileweight*9.15, time: 1.5, transition:"linear", onComplete:move3});
				angle = 90;
				play("walk");
			}
			else if(x >= Registry.tileweight*80 && x <= Registry.tileweight*82
			&& y >= Registry.tileweight*3 && y <= Registry.tileweight*15){
				Tweener.addTween(this, {y: Registry.tileweight*4.15, time: 5, transition:"linear", onComplete:move1});
				angle = 90;
				play("walk");
			}
			else if(x >= Registry.tileweight*82 && x <= Registry.tileweight*89
			&& y >= Registry.tileweight*6 && y <= Registry.tileweight*8){
				Tweener.addTween(this, {x: Registry.tileweight*83.15, time: 3.5, transition:"linear", onComplete:move1});
				angle = 0;
				play("walk");
			}
		}
		
		private function move3():void
		{
			if(x >= Registry.tileweight*8 && x <= Registry.tileweight*14
			&& y >= Registry.tileweight*5 && y <= Registry.tileweight*12){
				Tweener.addTween(this, {y: Registry.tileweight*6.15, time: 1.5, transition:"linear", onComplete:move4});
				angle = 90;
				play("walk");
			}
			else if(x >= Registry.tileweight*25 && x <= Registry.tileweight*29
			&& y >= Registry.tileweight && y <= Registry.tileweight*7){
				Tweener.addTween(this, {x: Registry.tileweight*26.15, time: 1.5, transition:"linear", onComplete:move4});
				angle = 0;
				play("walk");
			}
			else if(x >= Registry.tileweight*21 && x <= Registry.tileweight*28
			&& y >= Registry.tileweight*8 && y <= Registry.tileweight*13){
				Tweener.addTween(this, {x: Registry.tileweight*22.15, time: 1.5, transition:"linear", onComplete:move4});
				angle = 0;
				play("walk");
			}
			else if(x >= Registry.tileweight*38 && x <= Registry.tileweight*44
			&& y >= Registry.tileweight && y <= Registry.tileweight*6){
				Tweener.addTween(this, {y: Registry.tileweight*5.15, time: 1.5, transition:"linear", onComplete:move4});
				angle = -90;
				play("walk");
			}
			else if(x >= Registry.tileweight*34 && x <= Registry.tileweight*40
			&& y >= Registry.tileweight*5 && y <= Registry.tileweight*10){
				Tweener.addTween(this, {y: Registry.tileweight*9.15, time: 1.5, transition:"linear", onComplete:move4});
				angle = -90;
				play("walk");
			}
			else if(x >= Registry.tileweight*48 && x <= Registry.tileweight*55
			&& y >= Registry.tileweight*4 && y <= Registry.tileweight*10){
				Tweener.addTween(this, {x: Registry.tileweight*49.15, time: 1.5, transition:"linear", onComplete:move4});
				angle = 0;
				play("walk");
			}
			else if(x >= Registry.tileweight*48 && x <= Registry.tileweight*55
			&& y >= Registry.tileweight*9 && y <= Registry.tileweight*15){
				Tweener.addTween(this, {y: Registry.tileweight*14.15, time: 1.5, transition:"linear", onComplete:move4});
				angle = -90;
				play("walk");
			}
			else if(x >= Registry.tileweight*64 && x <= Registry.tileweight*70
			&& y >= Registry.tileweight*5 && y <= Registry.tileweight*11){
				Tweener.addTween(this, {y: Registry.tileweight*6.15, time: 1.5, transition:"linear", onComplete:move4});
				angle = 90;
				play("walk");
			}
			else if(x >= Registry.tileweight*75 && x <= Registry.tileweight*80
			&& y >= Registry.tileweight*4 && y <= Registry.tileweight*9){
				Tweener.addTween(this, {y: Registry.tileweight*5.15, time: 1.5, transition:"linear", onComplete:move4});
				angle = 90;
				play("walk");
			}
			else if(x >= Registry.tileweight*75 && x <= Registry.tileweight*80
			&& y >= Registry.tileweight*8 && y <= Registry.tileweight*13){
				Tweener.addTween(this, {x: Registry.tileweight*79.15, time: 1.5, transition:"linear", onComplete:move4});
				angle = 180;
				play("walk");
			}
		}
		
		private function move4():void
		{
			if(x >= Registry.tileweight*8 && x <= Registry.tileweight*14
			&& y >= Registry.tileweight*5 && y <= Registry.tileweight*12){
				Tweener.addTween(this, {x: Registry.tileweight*9.15, time: 1, transition:"linear", onComplete:move1});
				angle = 0;
				play("walk");
			}
			else if(x >= Registry.tileweight*25 && x <= Registry.tileweight*29
			&& y >= Registry.tileweight && y <= Registry.tileweight*7){
				Tweener.addTween(this, {y: Registry.tileweight*6.15, time: 1.5, transition:"linear", onComplete:move1});
				angle = -90;
				play("walk");
			}
			else if(x >= Registry.tileweight*21 && x <= Registry.tileweight*28
			&& y >= Registry.tileweight*8 && y <= Registry.tileweight*13){
				Tweener.addTween(this, {y: Registry.tileweight*9.15, time: 1.5, transition:"linear", onComplete:move1});
				angle = 90;
				play("walk");
			}
			else if(x >= Registry.tileweight*38 && x <= Registry.tileweight*44
			&& y >= Registry.tileweight && y <= Registry.tileweight*6){
				Tweener.addTween(this, {x: Registry.tileweight*39.15, time: 1.5, transition:"linear", onComplete:move1});
				angle = 0;
				play("walk");
			}
			else if(x >= Registry.tileweight*34 && x <= Registry.tileweight*40
			&& y >= Registry.tileweight*5 && y <= Registry.tileweight*10){
				Tweener.addTween(this, {x: Registry.tileweight*35.15, time: 1.5, transition:"linear", onComplete:move1});
				angle = 0;
				play("walk");
			}
			else if(x >= Registry.tileweight*48 && x <= Registry.tileweight*55
			&& y >= Registry.tileweight*4 && y <= Registry.tileweight*10){
				Tweener.addTween(this, {y: Registry.tileweight*5.15, time: 1.5, transition:"linear", onComplete:move1});
				angle = 90;
				play("walk");
			}
			else if(x >= Registry.tileweight*48 && x <= Registry.tileweight*55
			&& y >= Registry.tileweight*9 && y <= Registry.tileweight*15){
				Tweener.addTween(this, {x: Registry.tileweight*49.15, time: 1.5, transition:"linear", onComplete:move1});
				angle = 0;
				play("walk");
			}
			else if(x >= Registry.tileweight*64 && x <= Registry.tileweight*70
			&& y >= Registry.tileweight*5 && y <= Registry.tileweight*11){
				Tweener.addTween(this, {x: Registry.tileweight*65.15, time: 1.5, transition:"linear", onComplete:move1});
				angle = 0;
				play("walk");
			}
			else if(x >= Registry.tileweight*75 && x <= Registry.tileweight*80
			&& y >= Registry.tileweight*4 && y <= Registry.tileweight*9){
				Tweener.addTween(this, {x: Registry.tileweight*76.15, time: 1.5, transition:"linear", onComplete:move1});
				angle = 0;
				play("walk");
			}
			else if(x >= Registry.tileweight*75 && x <= Registry.tileweight*80
			&& y >= Registry.tileweight*8 && y <= Registry.tileweight*13){
				Tweener.addTween(this, {y: Registry.tileweight*12.15, time: 1.5, transition:"linear", onComplete:move1});
				angle = -90;
				play("walk");
			}
		}
		
		public function resetState():void
		{
			move1();
		}
			
		
		override public function update():void {		
		}
		
	}
}
