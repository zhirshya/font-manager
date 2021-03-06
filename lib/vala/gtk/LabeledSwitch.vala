/* LabeledSwitch.vala
 *
 * Copyright (C) 2009 - 2020 Jerry Casiano
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.
 *
 * If not, see <http://www.gnu.org/licenses/gpl-3.0.txt>.
*/

namespace FontManager {

    /**
     * LabeledSwitch:
     * @label:      text to display in label or %NULL
     *
     * Row like widget containing two #GtkLabel and a #GtkSwitch.
     * Use #GtkLabel.set_text() / #GtkLabel.set_markup()
     * @label is intended to display main option name
     * @description is intended to display additional information
     * @toggle is #GtkSwitch connect to its active signal to monitor changes
     *
     * ------------------------------------------------------------
     * |                                                          |
     * | label                 description                switch  |
     * |                                                          |
     * ------------------------------------------------------------
     */
    [GtkTemplate (ui = "/org/gnome/FontManager/ui/font-manager-labeled-switch.ui")]
    public class LabeledSwitch : Gtk.Box {

        /**
         * LabeledControl:label:
         *
         * #GtkLabel
         */
        [GtkChild] public Gtk.Label label { get; }

        /**
         * LabeledControl:description:
         *
         * Centered #GtkLabel with dim-label style class
         */
        [GtkChild] public Gtk.Label description { get; }

        /**
         * LabeledSwitch:toggle:
         *
         * #GtkSwitch
         */
        [GtkChild] public Gtk.Switch toggle { get; }

        public LabeledSwitch (string? label = null) {
            this.label.set_text(label != null ? label : "");
        }

    }

}
