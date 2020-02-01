package {
	/**
	 * @author md101
	 */
	public class Registry {
		
		[Embed(source = "../assets/imgs/logo.png")] public static var logoSekai:Class;
		[Embed(source = "../assets/imgs/pause.png")] public static var pause:Class;
		
		[Embed(source = "../assets/maps/newmap_.csv", mimeType = "application/octet-stream")] public static var colliderCSV:Class;
		[Embed(source = "../assets/maps/newfrag_.csv", mimeType = "application/octet-stream")] public static var crystalCSV:Class;
		[Embed(source = "../assets/maps/newpeak_.csv", mimeType = "application/octet-stream")] public static var peaksCSV:Class;
		[Embed(source = "../assets/maps/newportal_.csv", mimeType = "application/octet-stream")] public static var portalCSV:Class;
		[Embed(source = "../assets/maps/newenemy_.csv", mimeType = "application/octet-stream")] public static var enemyCSV:Class;
		[Embed(source = "../assets/maps/newcloseportal_.csv", mimeType = "application/octet-stream")] public static var closeCSV:Class;
		
		[Embed(source = "../assets/maps/bgimg.csv", mimeType = "application/octet-stream")] public static var bgimgCSV:Class;
		[Embed(source = "../assets/imgs/bgImg.png")] public static var bgimgPNG:Class;
		[Embed(source = "../assets/imgs/supreme-tiles.png")] public static var super_bgimg_PNG:Class;
		
		
		[Embed(source = "../assets/sons/close.mp3")] public static var close_snd:Class;
		[Embed(source = "../assets/sons/crystal.mp3")] public static var crystal_snd:Class;
		[Embed(source = "../assets/sons/dead_.mp3")] public static var dead_snd:Class;
		[Embed(source = "../assets/sons/ingame_.mp3")] public static var ingame_snd:Class;
		[Embed(source = "../assets/sons/gameover.mp3")] public static var gameover_snd:Class;
		[Embed(source = "../assets/sons/life.mp3")] public static var life_snd:Class;
		[Embed(source = "../assets/sons/open.mp3")] public static var open_snd:Class;
		[Embed(source = "../assets/sons/win_.mp3")] public static var win_snd:Class;
		[Embed(source = "../assets/sons/menu_.mp3")] public static var menu_snd:Class;
		
		
				
		public static var tileweight:Number = 40;//tamanho do tile	
		public static var score:Number = 0;//pontos coletados 
		public static var lives:int = 3;//vidas
		public static var keyCollect:Boolean = false;//chave da porta
		public static var btnClose:int = 0;//numero de chaves para fechar a porta
		
		public static var animationTime:Number = 0;
		public static var hudTime:Number = 0;
		public static var playerIsAlive:Boolean = true;
		public static var newTask:Boolean = false;
		public static var paused:Boolean = false;
		public static var youWon:Boolean = false;
		
		public static var stages:Number = 0;//quadrante
		public static var meta:Number = 0;//pontos de missao
		public static var sizes:Number = 600;//largura do quadrante
		
		public static var timerStack:Number = 0;//tempo do espeto
		public static var peaker:Boolean = false;//espetou ?
		public static var chance:int = 0;//continue game
	}
}
