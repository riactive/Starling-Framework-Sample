package
{
    import flash.display.Sprite;

    import starling.core.Starling;

    [SWF(framerate = 60, width = 800, height = 600)]
    public class StarlingTest extends Sprite
    {
        public function StarlingTest()
        {
            var star:Starling = new Starling(Main, stage);
            star.start();
        }
    }
}
