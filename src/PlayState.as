package {
	import caurina.transitions.*;
	import org.flixel.*;
	
	/**
	 * @author md101
	 */
	public class PlayState extends FlxState{
		
		private var map:Maps;
		private var hud:Hud;
		private var picked:Boolean = false;	
		private var door:Door;		
		public var pausedGroup:FlxGroup;
				
		/* 
		 * 
		 * Audios: nop
		 * 
		 */	
		
		public function PlayState() {
			super();
		}
		
		override public function create (): void{
			super.create();
			
			map = new Maps;
			hud = new Hud;

			add(hud);
			add(map.walls);
			add(map.peaks);
			add(map.crystals);
			add(map.portal);
			add(map.closePortal);
			add(map.treasure);
			add(map.player);
			add(map.enemy);
			
			door = new Door(-Registry.tileweight, -Registry.tileweight);
			add(door);
			
			
			FlxG.worldBounds = new FlxRect(0, 0, Registry.tileweight*90, Registry.tileweight*16);
			FlxG.camera.setBounds(0, 0, Registry.tileweight*90, Registry.tileweight*16);
			FlxG.camera.follow(map.player, FlxCamera.STYLE_LOCKON);
			
			pausedGroup = new FlxGroup();
			
			FlxG.playMusic(Registry.ingame_snd, 0.4);
		}

		override public function update():void {
			if(FlxG.keys.justPressed("P") || FlxG.keys.justPressed("ESCAPE")){
				Registry.paused = !Registry.paused;
				remove(hud.pause);
				Tweener.resumeAllTweens();
				FlxG.resumeSounds();
				return;
			}
			if(Registry.paused){
				add(hud.pause);
				Tweener.pauseAllTweens();
				FlxG.pauseSounds();
				pausedGroup.update();
				return;
			}
				
			Registry.timerStack += FlxG.elapsed;
			if(Math.round(Registry.timerStack) % 3 == 0){
				picked = true;
			} else {
				picked = false;
			}
			
			if(Registry.peaker == true && Registry.playerIsAlive == true){
				Registry.lives -= 1;
				if(Registry.lives <= 3){
					Registry.peaker = false;
				}
			}
			
			
			switch(Registry.stages){
				case 0:
					Registry.meta = 8;
				break;
				case 1:						 
					Registry.meta = 10;
				break;
				case 2:
					Registry.meta = 10;
				break;
				case 3:
					Registry.meta = 12;
				break;
				case 4:
					Registry.meta = 12;
				break;
				case 5:
					Registry.meta = 15;
				break;
				default:
					Registry.meta = 1;
				break;
			}
			
			switch(Registry.btnClose){
				case 0:
					door.x = door.y = -Registry.tileweight;
					break;
				case 1:
					door.x = Registry.tileweight*14;
					door.y = Registry.tileweight*8;
					break;
				case 2:
					door.x = Registry.tileweight*29;
					door.y = Registry.tileweight*14;
					break;
				case 3:
					door.x = Registry.tileweight*44;
					door.y = Registry.tileweight*10;
					break;
				case 4:
					door.x = Registry.tileweight*59;
					door.y = Registry.tileweight*8;
					break;
				case 5:
					door.x = Registry.tileweight*74;
					door.y = Registry.tileweight*8;
					break;
				default:
					door.x = Registry.tileweight*74;
					door.y = Registry.tileweight*8;
					break;
			}
			
			Tweener.resumeAllTweens();
			if(Registry.playerIsAlive == false){
				Registry.animationTime += FlxG.elapsed;	
				if(Registry.animationTime >= 1.1){
					Registry.animationTime = 0;
					if(Registry.lives > 1){
						reborn();
						Tweener.pauseAllTweens();
					} else {
						gameover();
					}
				}
			}
			
			if(Registry.youWon == true){
				Registry.animationTime += FlxG.elapsed;
				if(Registry.animationTime >= 1.1){
					youWon();
				}
			}
			
			hud.lives_txt.text = "x " + Registry.lives;
			hud.score_txt.text = "x " + map.crystals.countDead();
			
			if(Registry.score >= Registry.meta){
				Registry.keyCollect = true;
			} else {
				Registry.keyCollect = false;
			}
			
			
			FlxG.collide(map.player, map.walls);
			FlxG.overlap(map.player, map.enemy, hitEnemy);
			FlxG.overlap(map.player, map.crystals, getCrystal);
			FlxG.collide(map.player, map.portal, openDoor);
			FlxG.collide(map.player, map.closePortal, closeDoor);
			FlxG.collide(map.player, door);
			FlxG.collide(map.player, map.treasure, openTreasure);
			if(picked == true){
				FlxG.overlap(map.player, map.peaks, getPeaker);
			}
			
			if(Registry.score != 0 && Registry.playerIsAlive && map.portal.countDead() < 6 && !Registry.keyCollect){
				hud.mission_txt.text = "Collect " + Registry.score + "/" + Registry.meta + "fragments.";
			}
			
			if(Registry.score == 0 && Registry.playerIsAlive  && map.portal.countDead() < 6 && !Registry.keyCollect){
				activer();
				Registry.hudTime += FlxG.elapsed;
				hud.hud_shine.color = 0xff009900;
				hud.mission_txt.text = "Collect " + Registry.score + "/" + Registry.meta + "fragments.";
			} else if(Registry.score >= Registry.meta && Registry.playerIsAlive  && map.portal.countDead() < 6 && Registry.keyCollect){
				activer();
				Registry.hudTime += FlxG.elapsed;
				hud.hud_shine.color = 0xff009900;
				hud.mission_txt.text = "Open the portal.";
			} else {
				Registry.hudTime = 0;
			}
			
			if(!Registry.playerIsAlive && Registry.score <= 20 && Registry.lives <= 10 && Registry.hudTime < 2){
				activer();
				Registry.hudTime = 0;
				Registry.hudTime += FlxG.elapsed;
				hud.hud_shine.color = 0xffFF0000;
			}
			if(map.portal.countDead() >= 6 && Registry.playerIsAlive && Registry.hudTime < 2){
				activer();
				Registry.hudTime = 0;
				Registry.hudTime += FlxG.elapsed;
				hud.hud_shine.color = 0xffd6c43e;
				hud.mission_txt.text = "Open the treasure.";
			}
			if (Registry.playerIsAlive && map.crystals.countDead() % 35 == 0 && map.crystals.countDead() > 0 && Registry.hudTime < 2){
				activer();
				Registry.hudTime += FlxG.elapsed;
				hud.hud_shine.color = 0xff0066ff;
				if(Registry.hudTime >= 2){
					Registry.hudTime  = 3;
				}
			}
				
			super.update();
		}
		
		
		private function activer():void{
			Tweener.addTween(hud.hud_shine.scale, {x:1200, y: 1, time: 2, onComplete:actived});
			if(Registry.hudTime > 2){
				actived();
			}
		}
		private function actived():void{
			Tweener.addTween(hud.hud_shine.scale, {x:0, y: 1, time: 2});
			Registry.hudTime = 3;
		}
		
		private function reborn():void{
			if(Registry.btnClose > 0){
				map.player.x = door.x + Registry.tileweight;
				map.player.angle = 180;
				Registry.playerIsAlive = true;
				if(map.player.y >= door.y){
					map.player.y = door.y - Registry.tileweight*2 + Registry.tileweight*0.15;
				} else {
					map.player.y = door.y + Registry.tileweight*0.15;
				}
			} else {
				map.player.x = Registry.tileweight*3.15;
				map.player.y = Registry.tileweight*14.15;
				map.player.angle = 0;
				Registry.playerIsAlive = true;
			}		
		}

		private function hitEnemy(_p:Player, _e:Enemy):void{
			hurt();		
			Registry.peaker = true;
		}
		
		private function getPeaker(_p:Player, _s:Peak):void{
			hurt();
			Registry.peaker = true;
		}
		
		private function hurt():void{
			Registry.playerIsAlive = false;
			FlxG.play(Registry.dead_snd, .2, false);
		}
		
		private function getCrystal(_p:Player, _c:Crystal):void{
			_c.kill();
			Registry.score += 1;
			FlxG.play(Registry.crystal_snd, .75, false);
			if(map.crystals.countDead() % 35 == 0){
				Registry.lives += 1;
				FlxG.play(Registry.life_snd, .5, false);
			}
		}
		
		private function openDoor(_p:Player, _d:Door):void{
			if(Registry.keyCollect == true){
				Registry.stages += 1;
				_d.kill();
				FlxG.play(Registry.open_snd, .5, false);
			}
		}
		
		private function closeDoor(_p:Player, _c:CloseDoor):void{
			_c.kill();
			Registry.score = 0;
			Registry.btnClose += 1;
			FlxG.play(Registry.close_snd, .75, false);
		}
		
		private function openTreasure(_p:Player, _t:Treasure):void{
			_t.play("open");
			Registry.youWon = true;
		}
		
		public function youWon():void{
			Registry.chance += 1;
			FlxG.switchState(new GameWon());
			FlxG.pauseSounds();
		}
		
		public function gameover():void{
			Registry.chance += 1;
			FlxG.switchState(new GameOver());
			FlxG.pauseSounds();
		}
		
	}	
}
