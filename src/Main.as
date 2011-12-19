package
{
    import starling.core.Starling;
    import starling.display.MovieClip;
    import starling.display.Sprite;
    import starling.textures.Texture;
    import starling.textures.TextureAtlas;

    public class Main extends Sprite
    {

        [Embed(source = "run.xml", mimeType = "application/octet-stream")]
        private var AtlasXML:Class;

        [Embed(source = "run.png")]
        private var AtlasTexture:Class;

        public function Main()
        {
            var texture:Texture = Texture.fromBitmap(new AtlasTexture());
            var xml:XML = XML(new AtlasXML());
            var atlas:TextureAtlas = new TextureAtlas(texture, xml);

            var mc:MovieClip = new MovieClip(atlas.getTextures("run"), 30);
            addChild(mc);

            Starling.juggler.add(mc);
        }
    }
}
