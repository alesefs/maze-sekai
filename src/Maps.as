package {
	import org.flixel.*;

	/**
	 * @author md101
	 */
	public class Maps extends FlxGroup {
		public var walls : FlxTilemap;		
		
		public var crystals:FlxGroup;
		public var totalCrystals:int;
		
		public var peaks:FlxGroup;
		public var totalPeaks:int;
		
		public var portal:FlxGroup;
		public var totalPortal:int;
		
		public var closePortal:FlxGroup;
		public var totalClosePortal:int;
		
		public var enemy:FlxGroup;
		public var totalEnemy:int;
		
		public var treasure:Treasure;
		
		public var player:Player;

		public function Maps() {
			super();
			
			walls = new FlxTilemap;
			walls.loadMap(new Registry.colliderCSV, Registry.super_bgimg_PNG, 40, 40, 0, 0, 0, 0);
			walls.setTileProperties(3, FlxObject.NONE);
			walls.setTileProperties(10, FlxObject.NONE);
			walls.setTileProperties(13, FlxObject.NONE);
			walls.setTileProperties(20, FlxObject.NONE);
			walls.setTileProperties(21, FlxObject.NONE);
			walls.setTileProperties(22, FlxObject.NONE);
			walls.setTileProperties(21, FlxObject.NONE);
			walls.setTileProperties(27, FlxObject.NONE);
			walls.setTileProperties(34, FlxObject.NONE);
			
			treasure = new Treasure(Registry.tileweight*86, Registry.tileweight*4);
			
			player = new Player(Registry.tileweight*3.15, Registry.tileweight*14.15);
			
			spawnEnemy();
			stackPeaks();
			parseCrystals();
			builderDoors();
			closeDoors();
		}
		
		public function reborn():void {
			switch(Registry.btnClose){
					case 0:
					 	player.x = Registry.tileweight*3.15;
						player.y = Registry.tileweight*14.15;
					break;
					case 1:
						player.x = Registry.tileweight*15.15;//Registry.tileweight*15.15;
						player.y = Registry.tileweight*8.15;//Registry.tileweight*8.15;
					break;
					case 2:
						player.x = Registry.tileweight*30.15;
						player.y = Registry.tileweight*14.15;
					break;
					case 3:
						player.x = Registry.tileweight*45.15;
						player.y = Registry.tileweight*10.15;
					break;
					case 4:
						player.x = Registry.tileweight*60.15;
						player.y = Registry.tileweight*8.15;
					break;
					case 5:
						player.x = Registry.tileweight*75.15;
						player.y = Registry.tileweight*8.15;
					break;
				}

			Registry.playerIsAlive = true;
		}
		
		private function parseCrystals():void {
			var crystalMap:FlxTilemap = new FlxTilemap();
			crystalMap.loadMap(new Registry.crystalCSV, Registry.super_bgimg_PNG, 40, 40, 0, 0, 0, 0);	
			crystals = new FlxGroup();
			
			for (var ty:int = 0; ty < crystalMap.heightInTiles; ty++) {
				for (var tx:int = 0; tx < crystalMap.widthInTiles; tx++) {
					if (crystalMap.getTile(tx, ty) == 17) {
						crystals.add(new Crystal(tx, ty));
						totalCrystals++;
					}
				}
			}
		}
		
		private function stackPeaks():void {
			var peakMap:FlxTilemap = new FlxTilemap();
			peakMap.loadMap(new Registry.peaksCSV, Registry.super_bgimg_PNG, 40, 40, 0, 0, 0, 0);
			peaks = new FlxGroup();
			
			for (var ty:int = 0; ty < peakMap.heightInTiles; ty++) {
				for (var tx:int = 0; tx < peakMap.widthInTiles; tx++) {
					if (peakMap.getTile(tx, ty) == 30) {
						peaks.add(new Peak(tx, ty));
						totalPeaks++;
					}
				}
			}
		}
		
		private function builderDoors():void {
			var portalMap:FlxTilemap = new FlxTilemap();
			portalMap.loadMap(new Registry.portalCSV, Registry.super_bgimg_PNG, 40, 40, 0, 0, 0, 0);
			portal = new FlxGroup();
			
			for (var ty:int = 0; ty < portalMap.heightInTiles; ty++) {
				for (var tx:int = 0; tx < portalMap.widthInTiles; tx++) {
					if (portalMap.getTile(tx, ty) == 29) {
						portal.add(new Door(tx, ty));
						totalPortal++;
					}
				}
			}
		}
		
		private function spawnEnemy():void {
			var enemyMap:FlxTilemap = new FlxTilemap();
			enemyMap.loadMap(new Registry.enemyCSV, Registry.super_bgimg_PNG, 40, 40, 0, 0, 0, 0);
			enemy = new FlxGroup();
			
			for (var ty:int = 0; ty < enemyMap.heightInTiles; ty++) {
				for (var tx:int = 0; tx < enemyMap.widthInTiles; tx++) {
					if (enemyMap.getTile(tx, ty) == 18) {
						enemy.add(new Enemy(tx, ty));
						totalEnemy++;
					}
				}
			}
		}
		
		private function closeDoors():void {
			var closePortalMap:FlxTilemap = new FlxTilemap();
			closePortalMap.loadMap(new Registry.closeCSV, Registry.super_bgimg_PNG, 40, 40, 0, 0, 0, 0);
			closePortal = new FlxGroup();
			
			for (var ty:int = 0; ty < closePortalMap.heightInTiles; ty++) {
				for (var tx:int = 0; tx < closePortalMap.widthInTiles; tx++) {
					if (closePortalMap.getTile(tx, ty) == 25) {
						closePortal.add(new CloseDoor(tx, ty));
						totalClosePortal++;
					}
				}
			}
		}

	}
}
