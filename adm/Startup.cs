using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(adm.Startup))]
namespace adm
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
