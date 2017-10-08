/*
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License	
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

int main(string[] args) {
	Gtk.init(ref args);
	
	var window = new Gtk.Window();
	window.title = _("Hello GTK");
	window.set_border_width(12);
	window.set_position(Gtk.WindowPosition.CENTER);
	window.set_default_size(350, 70);
	window.destroy.connect(Gtk.main_quit);
	
	var grid = new Gtk.Grid();
	grid.orientation = Gtk.Orientation.VERTICAL;
	grid.row_spacing = 6;
	
	var button = new Gtk.Button.with_label(_("Click me!"));
	var label = new Gtk.Label(null);
	
	grid.add(button);
	grid.add(label);
	
	button.clicked.connect(() => {
		label.label = _("Hello World");
		button.sensitive = false;
	});
	
	window.add(grid);
	window.show_all();
	
	Gtk.main();
	return 0;
}
