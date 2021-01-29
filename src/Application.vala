public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.ijnmedia.big",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var button_hello = new Gtk.Button.with_label ("Click Me Man!") {
            margin = 12
        };

        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Hello Space"
        };
        main_window.add (button_hello);
        main_window.show_all ();

        button_hello.clicked.connect (() => {
            button_hello.label = "Hello Space!";
            button_hello.sensitive = false;
        });
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
