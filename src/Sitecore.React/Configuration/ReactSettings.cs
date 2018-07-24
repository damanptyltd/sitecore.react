namespace Sitecore.React.Configuration
{
    public class ReactSettings : IReactSettings
    {
        public ReactSettings()
        {
            // by default, react should be loaded by reactjs.net so should be true
            LoadReact = true;
        }
        public bool UseDebugReactScript { get; set; }
        public string DynamicPlaceholderType { get; set; }
        public string BundleName { get; set; }
        public bool EnableClientside { get; set; }
        public string BundleType { get; set; }
        public string ServerScript { get; set; }
        public string ClientScript { get; set; }
        public bool LoadReact { get; set; }
    }
}