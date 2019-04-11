public class Test : Gtk.Application {
    public Test () {
        Object(
            application_id: "com.github.cassidyjames.test",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var window = new Gtk.ApplicationWindow (this);
        window.title = "OS Branding Test";
        window.border_width = 24;

        var logo = new Gtk.Grid ();
        logo.halign = logo.valign = Gtk.Align.CENTER;
        logo.margin_bottom = 12;
        logo.width_request = logo.height_request = 128;

        var logo_context = logo.get_style_context ();
        logo_context.add_class (Granite.STYLE_CLASS_AVATAR);
        logo_context.add_class ("logo");

        var title = new Gtk.Label ("elementary OS 5 Juno");
        title.get_style_context ().add_class (Granite.STYLE_CLASS_H2_LABEL);

        var grid = new Gtk.Grid ();
        grid.orientation = Gtk.Orientation.VERTICAL;

        grid.add (logo);
        grid.add (title);

        window.add (grid);

        var provider = new Gtk.CssProvider ();
        provider.load_from_resource ("/com/github/cassidyjames/test/Application.css");

        Gtk.StyleContext.add_provider_for_screen (
            Gdk.Screen.get_default (),
            provider,
            Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION
        );

        window.show_all ();
    }

    public static int main (string[] args) {
        var app = new Test ();
        return app.run (args);
    }
}

