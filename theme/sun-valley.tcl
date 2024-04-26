# Copyright © 2021 rdbende <rdbende@gmail.com>
# A stunning light/dark theme for ttk based on Microsoft's Sun Valley visual style

package require Tk 8.6

namespace eval ttk::theme::sun-valley-light {
    variable version 1.0
    package provide ttk::theme::sun-valley-light $version

    ttk::style theme create sun-valley-light -parent clam -settings {
        variable sprites [image create photo -file [file join [file dirname [info script]] sprites.png] -format png]

        variable images
        set images(arrow-down) [image create photo -width 10 -height 5]
        $images(arrow-down) copy $sprites -from 264 197 274 202
        set images(arrow-right) [image create photo -width 5 -height 10]
        $images(arrow-right) copy $sprites -from 267 92 272 102
        set images(arrow-up) [image create photo -width 10 -height 5]
        $images(arrow-up) copy $sprites -from 254 202 264 207
        set images(button-accent-disabled) [image create photo -width 20 -height 20]
        $images(button-accent-disabled) copy $sprites -from 142 256 162 276
        set images(button-accent-hover) [image create photo -width 20 -height 20]
        $images(button-accent-hover) copy $sprites -from 162 256 182 276
        set images(button-accent-pressed) [image create photo -width 20 -height 20]
        $images(button-accent-pressed) copy $sprites -from 182 256 202 276
        set images(button-accent-rest) [image create photo -width 20 -height 20]
        $images(button-accent-rest) copy $sprites -from 186 116 206 136
        set images(button-close-hover) [image create photo -width 20 -height 20]
        $images(button-close-hover) copy $sprites -from 186 136 206 156
        set images(button-close-pressed) [image create photo -width 20 -height 20]
        $images(button-close-pressed) copy $sprites -from 192 96 212 116
        set images(button-disabled) [image create photo -width 20 -height 20]
        $images(button-disabled) copy $sprites -from 194 156 214 176
        set images(button-hover) [image create photo -width 20 -height 20]
        $images(button-hover) copy $sprites -from 194 176 214 196
        set images(button-pressed) [image create photo -width 20 -height 20]
        $images(button-pressed) copy $sprites -from 194 196 214 216
        set images(button-rest) [image create photo -width 20 -height 20]
        $images(button-rest) copy $sprites -from 194 216 214 236
        set images(button-titlebar-hover) [image create photo -width 20 -height 20]
        $images(button-titlebar-hover) copy $sprites -from 194 236 214 256
        set images(button-titlebar-pressed) [image create photo -width 20 -height 20]
        $images(button-titlebar-pressed) copy $sprites -from 202 256 222 276
        set images(card) [image create photo -width 50 -height 50]
        $images(card) copy $sprites -from 50 0 100 50
        set images(check-disabled) [image create photo -width 20 -height 20]
        $images(check-disabled) copy $sprites -from 206 116 226 136
        set images(check-hover) [image create photo -width 20 -height 20]
        $images(check-hover) copy $sprites -from 206 136 226 156
        set images(check-pressed) [image create photo -width 20 -height 20]
        $images(check-pressed) copy $sprites -from 214 156 234 176
        set images(check-rest) [image create photo -width 20 -height 20]
        $images(check-rest) copy $sprites -from 214 176 234 196
        set images(check-tri-disabled) [image create photo -width 20 -height 20]
        $images(check-tri-disabled) copy $sprites -from 214 196 234 216
        set images(check-tri-hover) [image create photo -width 20 -height 20]
        $images(check-tri-hover) copy $sprites -from 214 216 234 236
        set images(check-tri-pressed) [image create photo -width 20 -height 20]
        $images(check-tri-pressed) copy $sprites -from 214 236 234 256
        set images(check-tri-rest) [image create photo -width 20 -height 20]
        $images(check-tri-rest) copy $sprites -from 222 256 242 276
        set images(check-unsel-disabled) [image create photo -width 20 -height 20]
        $images(check-unsel-disabled) copy $sprites -from 216 74 236 94
        set images(check-unsel-hover) [image create photo -width 20 -height 20]
        $images(check-unsel-hover) copy $sprites -from 217 94 237 114
        set images(check-unsel-pressed) [image create photo -width 20 -height 20]
        $images(check-unsel-pressed) copy $sprites -from 236 72 256 92
        set images(check-unsel-rest) [image create photo -width 20 -height 20]
        $images(check-unsel-rest) copy $sprites -from 256 72 276 92
        set images(empty) [image create photo -width 10 -height 10]
        $images(empty) copy $sprites -from 90 100 100 110
        set images(entry-disabled) [image create photo -width 20 -height 20]
        $images(entry-disabled) copy $sprites -from 237 92 257 112
        set images(entry-focus) [image create photo -width 20 -height 20]
        $images(entry-focus) copy $sprites -from 226 114 246 134
        set images(entry-hover) [image create photo -width 20 -height 20]
        $images(entry-hover) copy $sprites -from 226 134 246 154
        set images(entry-invalid) [image create photo -width 20 -height 20]
        $images(entry-invalid) copy $sprites -from 234 154 254 174
        set images(entry-rest) [image create photo -width 20 -height 20]
        $images(entry-rest) copy $sprites -from 234 174 254 194
        set images(notebook-border) [image create photo -width 40 -height 40]
        $images(notebook-border) copy $sprites -from 50 50 90 90
        set images(notebook) [image create photo -width 40 -height 40]
        $images(notebook) copy $sprites -from 100 0 140 40
        set images(progress-pbar-hor) [image create photo -width 20 -height 5]
        $images(progress-pbar-hor) copy $sprites -from 132 248 152 253
        set images(progress-pbar-vert) [image create photo -width 5 -height 20]
        $images(progress-pbar-vert) copy $sprites -from 257 92 262 112
        set images(progress-trough-hor) [image create photo -width 20 -height 5]
        $images(progress-trough-hor) copy $sprites -from 254 192 274 197
        set images(progress-trough-vert) [image create photo -width 5 -height 20]
        $images(progress-trough-vert) copy $sprites -from 262 92 267 112
        set images(radio-disabled) [image create photo -width 20 -height 20]
        $images(radio-disabled) copy $sprites -from 234 194 254 214
        set images(radio-hover) [image create photo -width 20 -height 20]
        $images(radio-hover) copy $sprites -from 234 214 254 234
        set images(radio-pressed) [image create photo -width 20 -height 20]
        $images(radio-pressed) copy $sprites -from 234 234 254 254
        set images(radio-rest) [image create photo -width 20 -height 20]
        $images(radio-rest) copy $sprites -from 242 254 262 274
        set images(radio-unsel-disabled) [image create photo -width 20 -height 20]
        $images(radio-unsel-disabled) copy $sprites -from 246 112 266 132
        set images(radio-unsel-hover) [image create photo -width 20 -height 20]
        $images(radio-unsel-hover) copy $sprites -from 246 132 266 152
        set images(radio-unsel-pressed) [image create photo -width 20 -height 20]
        $images(radio-unsel-pressed) copy $sprites -from 254 152 274 172
        set images(radio-unsel-rest) [image create photo -width 20 -height 20]
        $images(radio-unsel-rest) copy $sprites -from 254 172 274 192
        set images(scale-thumb-disabled) [image create photo -width 22 -height 22]
        $images(scale-thumb-disabled) copy $sprites -from 130 60 152 82
        set images(scale-thumb-hover) [image create photo -width 22 -height 22]
        $images(scale-thumb-hover) copy $sprites -from 130 82 152 104
        set images(scale-thumb-pressed) [image create photo -width 22 -height 22]
        $images(scale-thumb-pressed) copy $sprites -from 124 104 146 126
        set images(scale-thumb-rest) [image create photo -width 22 -height 22]
        $images(scale-thumb-rest) copy $sprites -from 124 126 146 148
        set images(scale-trough-hor) [image create photo -width 22 -height 22]
        $images(scale-trough-hor) copy $sprites -from 152 52 174 74
        set images(scale-trough-vert) [image create photo -width 22 -height 22]
        $images(scale-trough-vert) copy $sprites -from 152 74 174 96
        set images(scroll-down) [image create photo -width 8 -height 6]
        $images(scroll-down) copy $sprites -from 112 258 120 264
        set images(scroll-hor-thumb) [image create photo -width 20 -height 12]
        $images(scroll-hor-thumb) copy $sprites -from 82 264 102 276
        set images(scroll-hor-trough) [image create photo -width 20 -height 12]
        $images(scroll-hor-trough) copy $sprites -from 102 264 122 276
        set images(scroll-left) [image create photo -width 6 -height 8]
        $images(scroll-left) copy $sprites -from 146 52 152 60
        set images(scroll-right) [image create photo -width 6 -height 8]
        $images(scroll-right) copy $sprites -from 254 207 260 215
        set images(scroll-up) [image create photo -width 8 -height 6]
        $images(scroll-up) copy $sprites -from 264 202 272 208
        set images(scroll-vert-thumb) [image create photo -width 12 -height 20]
        $images(scroll-vert-thumb) copy $sprites -from 258 52 270 72
        set images(scroll-vert-trough) [image create photo -width 12 -height 20]
        $images(scroll-vert-trough) copy $sprites -from 82 220 94 240
        set images(separator) [image create photo -width 1 -height 1]
        $images(separator) copy $sprites -from 236 93 237 94
        set images(sizegrip) [image create photo -width 10 -height 10]
        $images(sizegrip) copy $sprites -from 72 220 82 230
        set images(switch-off-disabled) [image create photo -width 40 -height 20]
        $images(switch-off-disabled) copy $sprites -from 40 110 80 130
        set images(switch-off-hover) [image create photo -width 40 -height 20]
        $images(switch-off-hover) copy $sprites -from 90 60 130 80
        set images(switch-off-pressed) [image create photo -width 40 -height 20]
        $images(switch-off-pressed) copy $sprites -from 90 80 130 100
        set images(switch-off-rest) [image create photo -width 40 -height 20]
        $images(switch-off-rest) copy $sprites -from 40 130 80 150
        set images(switch-on-disabled) [image create photo -width 40 -height 20]
        $images(switch-on-disabled) copy $sprites -from 32 150 72 170
        set images(switch-on-hover) [image create photo -width 40 -height 20]
        $images(switch-on-hover) copy $sprites -from 32 170 72 190
        set images(switch-on-pressed) [image create photo -width 40 -height 20]
        $images(switch-on-pressed) copy $sprites -from 32 190 72 210
        set images(switch-on-rest) [image create photo -width 40 -height 20]
        $images(switch-on-rest) copy $sprites -from 32 210 72 230
        set images(tab-hover) [image create photo -width 32 -height 32]
        $images(tab-hover) copy $sprites -from 172 0 204 32
        set images(tab-rest) [image create photo -width 32 -height 32]
        $images(tab-rest) copy $sprites -from 0 204 32 236
        set images(tab-selected) [image create photo -width 32 -height 32]
        $images(tab-selected) copy $sprites -from 204 0 236 32
        set images(treeheading-hover) [image create photo -width 22 -height 22]
        $images(treeheading-hover) copy $sprites -from 174 52 196 74
        set images(treeheading-pressed) [image create photo -width 22 -height 22]
        $images(treeheading-pressed) copy $sprites -from 174 74 196 96
        set images(treeheading-rest) [image create photo -width 22 -height 22]
        $images(treeheading-rest) copy $sprites -from 196 52 218 74

        unset sprites

        array set colors {
            -fg             "#202020"
            -bg             "#fafafa"
            -disabledfg     "#a0a0a0"
            -selectfg       "#ffffff"
            -selectbg       "#2f60d8"
        }

        ttk::style layout TButton {
            Button.button -children {
                Button.padding -children {
                    Button.label -side left -expand 1
                }
            }
        }

        ttk::style layout Toolbutton {
            Toolbutton.button -children {
                Toolbutton.padding -children {
                    Toolbutton.label -side left -expand 1
                }
            }
        }

        ttk::style layout TMenubutton {
            Menubutton.button -children {
                Menubutton.padding -children {
                    Menubutton.label -side left -expand 1
                    Menubutton.indicator -side right -sticky nsew
                }
            }
        }

        ttk::style layout TOptionMenu {
            OptionMenu.button -children {
                OptionMenu.padding -children {
                    OptionMenu.label -side left -expand 1
                    OptionMenu.indicator -side right -sticky nsew
                }
            }
        }

        ttk::style layout Accent.TButton {
            AccentButton.button -children {
                AccentButton.padding -children {
                    AccentButton.label -side left -expand 1
                }
            }
        }

        ttk::style layout Titlebar.TButton {
            TitlebarButton.button -children {
                TitlebarButton.padding -children {
                    TitlebarButton.label -side left -expand 1
                }
            }
        }

        ttk::style layout Close.Titlebar.TButton {
            CloseButton.button -children {
                CloseButton.padding -children {
                    CloseButton.label -side left -expand 1
                }
            }
        }

        ttk::style layout TCheckbutton {
            Checkbutton.button -children {
                Checkbutton.padding -children {
                    Checkbutton.indicator -side left
                    Checkbutton.label -side right -expand 1
                }
            }
        }

        ttk::style layout Switch.TCheckbutton {
            Switch.button -children {
                Switch.padding -children {
                    Switch.indicator -side left
                    Switch.label -side right -expand 1
                }
            }
        }

        ttk::style layout Toggle.TButton {
            ToggleButton.button -children {
                ToggleButton.padding -children {
                    ToggleButton.label -side left -expand 1
                }
            }
        }

        ttk::style layout TRadiobutton {
            Radiobutton.button -children {
                Radiobutton.padding -children {
                    Radiobutton.indicator -side left
                    Radiobutton.label -side right -expand 1
                }
            }
        }

        ttk::style layout Vertical.TScrollbar {
            Vertical.Scrollbar.trough -sticky ns -children {
                Vertical.Scrollbar.uparrow -side top
                Vertical.Scrollbar.downarrow -side bottom
                Vertical.Scrollbar.thumb -expand 1
            }
        }

        ttk::style layout Horizontal.TScrollbar {
            Horizontal.Scrollbar.trough -sticky ew -children {
                Horizontal.Scrollbar.leftarrow -side left
                Horizontal.Scrollbar.rightarrow -side right
                Horizontal.Scrollbar.thumb -expand 1
            }
        }

        ttk::style layout TSeparator {
            TSeparator.separator -sticky nsew
        }

        ttk::style layout TCombobox {
            Combobox.field -sticky nsew -children {
                Combobox.padding -expand 1 -sticky nsew -children {
                    Combobox.textarea -sticky nsew
                }
            }
            null -side right -sticky ns -children {
                Combobox.arrow -sticky nsew
            }
        }

        ttk::style layout TSpinbox {
            Spinbox.field -sticky nsew -children {
                Spinbox.padding -expand 1 -sticky nsew -children {
                    Spinbox.textarea -sticky nsew
                }

            }
            null -side right -sticky nsew -children {
                Spinbox.uparrow -side left -sticky nsew
                Spinbox.downarrow -side right -sticky nsew
            }
        }

        ttk::style layout Card.TFrame {
            Card.field {
                Card.padding -expand 1
            }
        }

        ttk::style layout TLabelframe {
            Labelframe.border {
                Labelframe.padding -expand 1 -children {
                    Labelframe.label -side left
                }
            }
        }

        ttk::style layout TNotebook {
            Notebook.border -children {
                TNotebook.Tab -expand 1
                Notebook.client -sticky nsew
            }
        }

        ttk::style layout Treeview.Item {
            Treeitem.padding -sticky nsew -children {
                Treeitem.image -side left -sticky {}
                Treeitem.indicator -side left -sticky {}
                Treeitem.text -side left -sticky {}
            }
        }

        # Button
        ttk::style configure TButton -padding {8 4} -anchor center -foreground $colors(-fg)

        ttk::style map TButton -foreground \
            [list disabled #a2a2a2 \
                pressed #636363 \
                active #1a1a1a]

        ttk::style element create Button.button image \
            [list $images(button-rest) \
                {selected disabled} $images(button-disabled) \
                disabled $images(button-disabled) \
                selected $images(button-rest) \
                pressed $images(button-pressed) \
                active $images(button-hover) \
            ] -border 4 -sticky nsew

        # Toolbutton
        ttk::style configure Toolbutton -padding {8 4} -anchor center

        ttk::style element create Toolbutton.button image \
            [list $images(empty) \
                {selected disabled} $images(button-disabled) \
                selected $images(button-rest) \
                pressed $images(button-pressed) \
                active $images(button-hover) \
            ] -border 4 -sticky nsew

        # Menubutton
        ttk::style configure TMenubutton -padding {8 4 0 4}

        ttk::style element create Menubutton.button \
            image [list $images(button-rest) \
                disabled $images(button-disabled) \
                pressed $images(button-pressed) \
                active $images(button-hover) \
            ] -border 4 -sticky nsew

        ttk::style element create Menubutton.indicator image $images(arrow-down) -width 28 -sticky {}

        # OptionMenu
        ttk::style configure TOptionMenu -padding {8 4 0 4}

        ttk::style element create OptionMenu.button \
            image [list $images(button-rest) \
                disabled $images(button-disabled) \
                pressed $images(button-pressed) \
                active $images(button-hover) \
            ] -border 4 -sticky nsew

        ttk::style element create OptionMenu.indicator image $images(arrow-down) -width 28 -sticky {}

        # Accent.TButton
        ttk::style configure Accent.TButton -padding {8 4} -anchor center -foreground #ffffff

        ttk::style map Accent.TButton -foreground \
            [list disabled #ffffff \
                pressed #c1d8ee]

        ttk::style element create AccentButton.button image \
            [list $images(button-accent-rest) \
                {selected disabled} $images(button-accent-disabled) \
                disabled $images(button-accent-disabled) \
                selected $images(button-accent-rest) \
                pressed $images(button-accent-pressed) \
                active $images(button-accent-hover) \
            ] -border 4 -sticky nsew

        # Titlebar.TButton
        ttk::style configure Titlebar.TButton -padding {8 4} -anchor center -foreground #1a1a1a

        ttk::style map Titlebar.TButton -foreground \
            [list disabled #a0a0a0 \
                pressed #606060 \
                active #191919]

        ttk::style element create TitlebarButton.button image \
            [list $images(empty) \
                disabled $images(empty) \
                pressed $images(button-titlebar-pressed) \
                active $images(button-titlebar-hover) \
            ] -border 4 -sticky nsew

        # Close.Titlebar.TButton
        ttk::style configure Close.Titlebar.TButton -padding {8 4} -anchor center -foreground #1a1a1a

        ttk::style map Close.Titlebar.TButton -foreground \
            [list disabled #a0a0a0 \
                pressed #efc6c2 \
                active #ffffff]

        ttk::style element create CloseButton.button image \
            [list $images(empty) \
                disabled $images(empty) \
                pressed $images(button-close-pressed) \
                active $images(button-close-hover) \
            ] -border 4 -sticky nsew

        # Checkbutton
        ttk::style configure TCheckbutton -padding 4

        ttk::style element create Checkbutton.indicator image \
            [list $images(check-unsel-rest) \
                {alternate disabled} $images(check-tri-disabled) \
                {selected disabled} $images(check-disabled) \
                disabled $images(check-unsel-disabled) \
                {pressed alternate} $images(check-tri-hover) \
                {active alternate} $images(check-tri-hover) \
                alternate $images(check-tri-rest) \
                {pressed selected} $images(check-hover) \
                {active selected} $images(check-hover) \
                selected $images(check-rest) \
                {pressed !selected} $images(check-unsel-pressed) \
                active $images(check-unsel-hover) \
            ] -width 26 -sticky w

        # Switch.TCheckbutton
        ttk::style element create Switch.indicator image \
            [list $images(switch-off-rest) \
                {selected disabled} $images(switch-on-disabled) \
                disabled $images(switch-off-disabled) \
                {pressed selected} $images(switch-on-pressed) \
                {active selected} $images(switch-on-hover) \
                selected $images(switch-on-rest) \
                {pressed !selected} $images(switch-off-pressed) \
                active $images(switch-off-hover) \
            ] -width 46 -sticky w

        # Toggle.TButton
        ttk::style configure Toggle.TButton -padding {8 4 8 4} -anchor center -foreground $colors(-fg)

        ttk::style map Toggle.TButton -foreground \
            [list {selected disabled} #ffffff \
                {selected pressed} #636363 \
                selected #ffffff \
                pressed #c1d8ee \
                disabled #a2a2a2 \
                active #1a1a1a
            ]

        ttk::style element create ToggleButton.button image \
            [list $images(button-rest) \
                {selected disabled} $images(button-accent-disabled) \
                disabled $images(button-disabled) \
                {pressed selected} $images(button-rest) \
                {active selected} $images(button-accent-hover) \
                selected $images(button-accent-rest) \
                {pressed !selected} $images(button-accent-rest) \
                active $images(button-hover) \
            ] -border 4 -sticky nsew

        # Radiobutton
        ttk::style configure TRadiobutton -padding 4

        ttk::style element create Radiobutton.indicator image \
            [list $images(radio-unsel-rest) \
                {selected disabled} $images(radio-disabled) \
                disabled $images(radio-unsel-disabled) \
                {pressed selected} $images(radio-pressed) \
                {active selected} $images(radio-hover) \
                selected $images(radio-rest) \
                {pressed !selected} $images(radio-unsel-pressed) \
                active $images(radio-unsel-hover) \
            ] -width 26 -sticky w

        # Scrollbar
        ttk::style element create Horizontal.Scrollbar.trough image $images(scroll-hor-trough) -sticky ew -border 6
        ttk::style element create Horizontal.Scrollbar.thumb image $images(scroll-hor-thumb) -sticky ew -border 3

        ttk::style element create Horizontal.Scrollbar.rightarrow image $images(scroll-right) -sticky {} -width 12
        ttk::style element create Horizontal.Scrollbar.leftarrow image $images(scroll-left) -sticky {} -width 12

        ttk::style element create Vertical.Scrollbar.trough image $images(scroll-vert-trough) -sticky ns -border 6
        ttk::style element create Vertical.Scrollbar.thumb image $images(scroll-vert-thumb) -sticky ns -border 3

        ttk::style element create Vertical.Scrollbar.uparrow image $images(scroll-up) -sticky {} -height 12
        ttk::style element create Vertical.Scrollbar.downarrow image $images(scroll-down) -sticky {} -height 12

        # Scale
        ttk::style element create Horizontal.Scale.trough image $images(scale-trough-hor) \
            -border 5 -padding 0

        ttk::style element create Vertical.Scale.trough image $images(scale-trough-vert) \
            -border 5 -padding 0

        ttk::style element create Scale.slider \
            image [list $images(scale-thumb-rest) \
                disabled $images(scale-thumb-disabled) \
                pressed $images(scale-thumb-pressed) \
                active $images(scale-thumb-hover) \
            ] -sticky {}

        # Progressbar
        ttk::style element create Horizontal.Progressbar.trough image $images(progress-trough-hor) \
            -border 1 -sticky ew

        ttk::style element create Horizontal.Progressbar.pbar image $images(progress-pbar-hor) \
            -border 2 -sticky ew

        ttk::style element create Vertical.Progressbar.trough image $images(progress-trough-vert) \
            -border 1 -sticky ns

        ttk::style element create Vertical.Progressbar.pbar image $images(progress-pbar-vert) \
            -border 2 -sticky ns

        # Entry
        ttk::style configure TEntry -foreground $colors(-fg)

        ttk::style map TEntry -foreground \
            [list disabled #0a0a0a \
                pressed #636363 \
                active #626262
            ]

        ttk::style element create Entry.field \
            image [list $images(entry-rest) \
                {focus hover !invalid} $images(entry-focus) \
                invalid $images(entry-invalid) \
                disabled $images(entry-disabled) \
                {focus !invalid} $images(entry-focus) \
                hover $images(entry-hover) \
            ] -border 5 -padding 8 -sticky nsew

        # Combobox
        ttk::style configure TCombobox -foreground $colors(-fg)

        ttk::style configure ComboboxPopdownFrame -borderwidth 1 -relief solid

        ttk::style map TCombobox -foreground \
            [list disabled #0a0a0a \
                pressed #636363 \
                active #626262
            ]

        ttk::style map TCombobox -selectbackground [list \
            {readonly hover} $colors(-selectbg) \
            {readonly focus} $colors(-selectbg) \
        ] -selectforeground [list \
            {readonly hover} $colors(-selectfg) \
            {readonly focus} $colors(-selectfg) \
        ]

        ttk::style element create Combobox.field \
            image [list $images(entry-rest) \
                {readonly disabled} $images(button-disabled) \
                {readonly pressed} $images(button-pressed) \
                {readonly hover} $images(button-hover) \
                readonly $images(button-rest) \
                invalid $images(entry-invalid) \
                disabled $images(entry-disabled) \
                focus $images(entry-focus) \
                hover $images(entry-hover) \
            ] -border 5 -padding {8 8 28 8}

        ttk::style element create Combobox.arrow image $images(arrow-down) -width 35 -sticky {}

        # Spinbox
        ttk::style configure TSpinbox -foreground $colors(-fg)

        ttk::style map TSpinbox -foreground \
            [list disabled #0a0a0a \
                pressed #636363 \
                active #626262
            ]

        ttk::style element create Spinbox.field \
            image [list $images(entry-rest) \
                invalid $images(entry-invalid) \
                disabled $images(entry-disabled) \
                focus $images(entry-focus) \
                hover $images(entry-hover) \
            ] -border 5 -padding {8 8 54 8} -sticky nsew

        ttk::style element create Spinbox.uparrow image $images(arrow-up) -width 35 -sticky {}
        ttk::style element create Spinbox.downarrow image $images(arrow-down) -width 35 -sticky {}

        # Sizegrip
        ttk::style element create Sizegrip.sizegrip image $images(sizegrip) \
            -sticky nsew

        # Separator
        ttk::style element create TSeparator.separator image $images(separator)

        # Card
        ttk::style element create Card.field image $images(card) \
            -border 10 -padding 4 -sticky nsew

        # Labelframe
        ttk::style element create Labelframe.border image $images(card) \
            -border 5 -padding 4 -sticky nsew

        # Notebook
        ttk::style configure TNotebook -padding 1

        ttk::style element create Notebook.border \
            image $images(notebook-border) -border 5 -padding 5

        ttk::style element create Notebook.client image $images(notebook)

        ttk::style element create Notebook.tab \
            image [list $images(tab-rest) \
                selected $images(tab-selected) \
                active $images(tab-hover) \
            ] -border 13 -padding {16 14 16 6} -height 32

        # Treeview
        ttk::style element create Treeview.field image $images(card) \
            -border 5

        ttk::style element create Treeheading.cell \
            image [list $images(treeheading-rest) \
                pressed $images(treeheading-pressed) \
                active $images(treeheading-hover)
            ] -border 5 -padding 15 -sticky nsew

        ttk::style element create Treeitem.indicator \
            image [list $images(arrow-right) \
                user2 $images(empty) \
                user1 $images(arrow-down) \
            ] -width 26 -sticky {}

        ttk::style configure Treeview -foregound #1a1a1a -background $colors(-bg) -rowheight [expr {[font metrics font -linespace] + 2}]
        ttk::style map Treeview \
            -background [list selected #f0f0f0] \
            -foreground [list selected #191919]

        # Panedwindow
        # Insane hack to remove clam's ugly sash
        ttk::style configure Sash -gripcount 0
    }
}

namespace eval ttk::theme::sun-valley-dark {
    variable version 1.0
    package provide ttk::theme::sun-valley-dark $version

    ttk::style theme create sun-valley-dark -parent clam -settings {
        variable sprites [image create photo -file [file join [file dirname [info script]] sprites.png] -format png]

        variable images
        set images(arrow-down) [image create photo -width 10 -height 5]
        $images(arrow-down) copy $sprites -from 112 253 122 258
        set images(arrow-right) [image create photo -width 5 -height 10]
        $images(arrow-right) copy $sprites -from 32 140 37 150
        set images(arrow-up) [image create photo -width 10 -height 5]
        $images(arrow-up) copy $sprites -from 254 197 264 202
        set images(button-accent-disabled) [image create photo -width 20 -height 20]
        $images(button-accent-disabled) copy $sprites -from 196 74 216 94
        set images(button-accent-hover) [image create photo -width 20 -height 20]
        $images(button-accent-hover) copy $sprites -from 218 52 238 72
        set images(button-accent-pressed) [image create photo -width 20 -height 20]
        $images(button-accent-pressed) copy $sprites -from 238 52 258 72
        set images(button-accent-rest) [image create photo -width 20 -height 20]
        $images(button-accent-rest) copy $sprites -from 62 230 82 250
        set images(button-close-hover) [image create photo -width 20 -height 20]
        $images(button-close-hover) copy $sprites -from 62 250 82 270
        set images(button-close-pressed) [image create photo -width 20 -height 20]
        $images(button-close-pressed) copy $sprites -from 102 144 122 164
        set images(button-disabled) [image create photo -width 20 -height 20]
        $images(button-disabled) copy $sprites -from 122 148 142 168
        set images(button-hover) [image create photo -width 20 -height 20]
        $images(button-hover) copy $sprites -from 94 164 114 184
        set images(button-pressed) [image create photo -width 20 -height 20]
        $images(button-pressed) copy $sprites -from 94 184 114 204
        set images(button-rest) [image create photo -width 20 -height 20]
        $images(button-rest) copy $sprites -from 94 204 114 224
        set images(button-titlebar-hover) [image create photo -width 20 -height 20]
        $images(button-titlebar-hover) copy $sprites -from 114 168 134 188
        set images(button-titlebar-pressed) [image create photo -width 20 -height 20]
        $images(button-titlebar-pressed) copy $sprites -from 114 188 134 208
        set images(card) [image create photo -width 50 -height 50]
        $images(card) copy $sprites -from 0 0 50 50
        set images(check-disabled) [image create photo -width 20 -height 20]
        $images(check-disabled) copy $sprites -from 114 208 134 228
        set images(check-hover) [image create photo -width 20 -height 20]
        $images(check-hover) copy $sprites -from 94 224 114 244
        set images(check-pressed) [image create photo -width 20 -height 20]
        $images(check-pressed) copy $sprites -from 114 228 134 248
        set images(check-rest) [image create photo -width 20 -height 20]
        $images(check-rest) copy $sprites -from 92 244 112 264
        set images(check-tri-disabled) [image create photo -width 20 -height 20]
        $images(check-tri-disabled) copy $sprites -from 152 96 172 116
        set images(check-tri-hover) [image create photo -width 20 -height 20]
        $images(check-tri-hover) copy $sprites -from 172 96 192 116
        set images(check-tri-pressed) [image create photo -width 20 -height 20]
        $images(check-tri-pressed) copy $sprites -from 146 116 166 136
        set images(check-tri-rest) [image create photo -width 20 -height 20]
        $images(check-tri-rest) copy $sprites -from 166 116 186 136
        set images(check-unsel-disabled) [image create photo -width 20 -height 20]
        $images(check-unsel-disabled) copy $sprites -from 146 136 166 156
        set images(check-unsel-hover) [image create photo -width 20 -height 20]
        $images(check-unsel-hover) copy $sprites -from 166 136 186 156
        set images(check-unsel-pressed) [image create photo -width 20 -height 20]
        $images(check-unsel-pressed) copy $sprites -from 134 168 154 188
        set images(check-unsel-rest) [image create photo -width 20 -height 20]
        $images(check-unsel-rest) copy $sprites -from 134 188 154 208
        set images(empty) [image create photo -width 10 -height 10]
        $images(empty) copy $sprites -from 40 100 50 110
        set images(entry-disabled) [image create photo -width 20 -height 20]
        $images(entry-disabled) copy $sprites -from 134 208 154 228
        set images(entry-focus) [image create photo -width 20 -height 20]
        $images(entry-focus) copy $sprites -from 134 228 154 248
        set images(entry-hover) [image create photo -width 20 -height 20]
        $images(entry-hover) copy $sprites -from 154 156 174 176
        set images(entry-invalid) [image create photo -width 20 -height 20]
        $images(entry-invalid) copy $sprites -from 154 176 174 196
        set images(entry-rest) [image create photo -width 20 -height 20]
        $images(entry-rest) copy $sprites -from 154 196 174 216
        set images(notebook-border) [image create photo -width 50 -height 50]
        $images(notebook-border) copy $sprites -from 0 50 50 100
        set images(notebook) [image create photo -width 40 -height 40]
        $images(notebook) copy $sprites -from 0 100 40 140
        set images(progress-pbar-hor) [image create photo -width 20 -height 5]
        $images(progress-pbar-hor) copy $sprites -from 62 270 82 275
        set images(progress-pbar-vert) [image create photo -width 5 -height 20]
        $images(progress-pbar-vert) copy $sprites -from 270 52 275 72
        set images(progress-trough-hor) [image create photo -width 20 -height 5]
        $images(progress-trough-hor) copy $sprites -from 112 248 132 253
        set images(progress-trough-vert) [image create photo -width 5 -height 20]
        $images(progress-trough-vert) copy $sprites -from 212 94 217 114
        set images(radio-disabled) [image create photo -width 20 -height 20]
        $images(radio-disabled) copy $sprites -from 154 216 174 236
        set images(radio-hover) [image create photo -width 20 -height 20]
        $images(radio-hover) copy $sprites -from 174 156 194 176
        set images(radio-pressed) [image create photo -width 20 -height 20]
        $images(radio-pressed) copy $sprites -from 174 176 194 196
        set images(radio-rest) [image create photo -width 20 -height 20]
        $images(radio-rest) copy $sprites -from 174 196 194 216
        set images(radio-unsel-disabled) [image create photo -width 20 -height 20]
        $images(radio-unsel-disabled) copy $sprites -from 174 216 194 236
        set images(radio-unsel-hover) [image create photo -width 20 -height 20]
        $images(radio-unsel-hover) copy $sprites -from 154 236 174 256
        set images(radio-unsel-pressed) [image create photo -width 20 -height 20]
        $images(radio-unsel-pressed) copy $sprites -from 174 236 194 256
        set images(radio-unsel-rest) [image create photo -width 20 -height 20]
        $images(radio-unsel-rest) copy $sprites -from 122 256 142 276
        set images(scale-thumb-disabled) [image create photo -width 22 -height 22]
        $images(scale-thumb-disabled) copy $sprites -from 40 230 62 252
        set images(scale-thumb-hover) [image create photo -width 22 -height 22]
        $images(scale-thumb-hover) copy $sprites -from 40 252 62 274
        set images(scale-thumb-pressed) [image create photo -width 22 -height 22]
        $images(scale-thumb-pressed) copy $sprites -from 80 110 102 132
        set images(scale-thumb-rest) [image create photo -width 22 -height 22]
        $images(scale-thumb-rest) copy $sprites -from 80 132 102 154
        set images(scale-trough-hor) [image create photo -width 22 -height 22]
        $images(scale-trough-hor) copy $sprites -from 72 154 94 176
        set images(scale-trough-vert) [image create photo -width 22 -height 22]
        $images(scale-trough-vert) copy $sprites -from 72 176 94 198
        set images(scroll-down) [image create photo -width 8 -height 6]
        $images(scroll-down) copy $sprites -from 32 230 40 236
        set images(scroll-hor-thumb) [image create photo -width 20 -height 12]
        $images(scroll-hor-thumb) copy $sprites -from 232 40 252 52
        set images(scroll-hor-trough) [image create photo -width 20 -height 12]
        $images(scroll-hor-trough) copy $sprites -from 252 40 272 52
        set images(scroll-left) [image create photo -width 6 -height 8]
        $images(scroll-left) copy $sprites -from 146 104 152 112
        set images(scroll-right) [image create photo -width 6 -height 8]
        $images(scroll-right) copy $sprites -from 140 52 146 60
        set images(scroll-up) [image create photo -width 8 -height 6]
        $images(scroll-up) copy $sprites -from 94 154 102 160
        set images(scroll-vert-thumb) [image create photo -width 10 -height 20]
        $images(scroll-vert-thumb) copy $sprites -from 82 240 92 260
        set images(scroll-vert-trough) [image create photo -width 12 -height 20]
        $images(scroll-vert-trough) copy $sprites -from 220 32 232 52
        set images(separator) [image create photo -width 1 -height 1]
        $images(separator) copy $sprites -from 236 92 237 93
        set images(sizegrip) [image create photo -width 10 -height 10]
        $images(sizegrip) copy $sprites -from 90 50 100 60
        set images(switch-off-disabled) [image create photo -width 40 -height 20]
        $images(switch-off-disabled) copy $sprites -from 236 0 276 20
        set images(switch-off-hover) [image create photo -width 40 -height 20]
        $images(switch-off-hover) copy $sprites -from 236 20 276 40
        set images(switch-off-pressed) [image create photo -width 40 -height 20]
        $images(switch-off-pressed) copy $sprites -from 0 236 40 256
        set images(switch-off-rest) [image create photo -width 40 -height 20]
        $images(switch-off-rest) copy $sprites -from 0 256 40 276
        set images(switch-on-disabled) [image create photo -width 40 -height 20]
        $images(switch-on-disabled) copy $sprites -from 50 90 90 110
        set images(switch-on-hover) [image create photo -width 40 -height 20]
        $images(switch-on-hover) copy $sprites -from 100 40 140 60
        set images(switch-on-pressed) [image create photo -width 40 -height 20]
        $images(switch-on-pressed) copy $sprites -from 140 32 180 52
        set images(switch-on-rest) [image create photo -width 40 -height 20]
        $images(switch-on-rest) copy $sprites -from 180 32 220 52
        set images(tab-hover) [image create photo -width 32 -height 32]
        $images(tab-hover) copy $sprites -from 0 140 32 172
        set images(tab-rest) [image create photo -width 32 -height 32]
        $images(tab-rest) copy $sprites -from 140 0 172 32
        set images(tab-selected) [image create photo -width 32 -height 32]
        $images(tab-selected) copy $sprites -from 0 172 32 204
        set images(treeheading-hover) [image create photo -width 22 -height 22]
        $images(treeheading-hover) copy $sprites -from 72 198 94 220
        set images(treeheading-pressed) [image create photo -width 22 -height 22]
        $images(treeheading-pressed) copy $sprites -from 102 100 124 122
        set images(treeheading-rest) [image create photo -width 22 -height 22]
        $images(treeheading-rest) copy $sprites -from 102 122 124 144

        unset sprites

        array set colors {
            -fg             "#ffffff"
            -bg             "#1c1c1c"
            -disabledfg     "#595959"
            -selectfg       "#ffffff"
            -selectbg       "#2f60d8"
        }

        ttk::style layout TButton {
            Button.button -children {
                Button.padding -children {
                    Button.label -side left -expand 1
                }
            }
        }

        ttk::style layout Toolbutton {
            Toolbutton.button -children {
                Toolbutton.padding -children {
                    Toolbutton.label -side left -expand 1
                }
            }
        }

        ttk::style layout TMenubutton {
            Menubutton.button -children {
                Menubutton.padding -children {
                    Menubutton.label -side left -expand 1
                    Menubutton.indicator -side right -sticky nsew
                }
            }
        }

        ttk::style layout TOptionMenu {
            OptionMenu.button -children {
                OptionMenu.padding -children {
                    OptionMenu.label -side left -expand 1
                    OptionMenu.indicator -side right -sticky nsew
                }
            }
        }

        ttk::style layout Accent.TButton {
            AccentButton.button -children {
                AccentButton.padding -children {
                    AccentButton.label -side left -expand 1
                }
            }
        }

        ttk::style layout Titlebar.TButton {
            TitlebarButton.button -children {
                TitlebarButton.padding -children {
                    TitlebarButton.label -side left -expand 1
                }
            }
        }

        ttk::style layout Close.Titlebar.TButton {
            CloseButton.button -children {
                CloseButton.padding -children {
                    CloseButton.label -side left -expand 1
                }
            }
        }

        ttk::style layout TCheckbutton {
            Checkbutton.button -children {
                Checkbutton.padding -children {
                    Checkbutton.indicator -side left
                    Checkbutton.label -side right -expand 1
                }
            }
        }

        ttk::style layout Switch.TCheckbutton {
            Switch.button -children {
                Switch.padding -children {
                    Switch.indicator -side left
                    Switch.label -side right -expand 1
                }
            }
        }

        ttk::style layout Toggle.TButton {
            ToggleButton.button -children {
                ToggleButton.padding -children {
                    ToggleButton.label -side left -expand 1
                }
            }
        }

        ttk::style layout TRadiobutton {
            Radiobutton.button -children {
                Radiobutton.padding -children {
                    Radiobutton.indicator -side left
                    Radiobutton.label -side right -expand 1
                }
            }
        }

        ttk::style layout Vertical.TScrollbar {
            Vertical.Scrollbar.trough -sticky ns -children {
                Vertical.Scrollbar.uparrow -side top
                Vertical.Scrollbar.downarrow -side bottom
                Vertical.Scrollbar.thumb -expand 1
            }
        }

        ttk::style layout Horizontal.TScrollbar {
            Horizontal.Scrollbar.trough -sticky ew -children {
                Horizontal.Scrollbar.leftarrow -side left
                Horizontal.Scrollbar.rightarrow -side right
                Horizontal.Scrollbar.thumb -expand 1
            }
        }

        ttk::style layout TSeparator {
            TSeparator.separator -sticky nsew
        }

        ttk::style layout TCombobox {
            Combobox.field -sticky nsew -children {
                Combobox.padding -expand 1 -sticky nsew -children {
                    Combobox.textarea -sticky nsew
                }
            }
            null -side right -sticky ns -children {
                Combobox.arrow -sticky nsew
            }
        }

        ttk::style layout TSpinbox {
            Spinbox.field -sticky nsew -children {
                Spinbox.padding -expand 1 -sticky nsew -children {
                    Spinbox.textarea -sticky nsew
                }

            }
            null -side right -sticky nsew -children {
                Spinbox.uparrow -side left -sticky nsew
                Spinbox.downarrow -side right -sticky nsew
            }
        }

        ttk::style layout Card.TFrame {
            Card.field {
                Card.padding -expand 1
            }
        }

        ttk::style layout TLabelframe {
            Labelframe.border {
                Labelframe.padding -expand 1 -children {
                    Labelframe.label -side left
                }
            }
        }

        ttk::style layout TNotebook {
            Notebook.border -children {
                TNotebook.Tab -expand 1
                Notebook.client -sticky nsew
            }
        }

        ttk::style layout Treeview.Item {
            Treeitem.padding -sticky nsew -children {
                Treeitem.image -side left -sticky {}
                Treeitem.indicator -side left -sticky {}
                Treeitem.text -side left -sticky {}
            }
        }

        # Button
        ttk::style configure TButton -padding {8 4} -anchor center -foreground $colors(-fg)

        ttk::style map TButton -foreground \
            [list disabled #7a7a7a \
                pressed #d0d0d0]

        ttk::style element create Button.button image \
            [list $images(button-rest) \
                {selected disabled} $images(button-disabled) \
                disabled $images(button-disabled) \
                selected $images(button-rest) \
                pressed $images(button-pressed) \
                active $images(button-hover) \
            ] -border 4 -sticky nsew

        # Toolbutton
        ttk::style configure Toolbutton -padding {8 4} -anchor center

        ttk::style element create Toolbutton.button image \
            [list $images(empty) \
                {selected disabled} $images(button-disabled) \
                selected $images(button-rest) \
                pressed $images(button-pressed) \
                active $images(button-hover) \
            ] -border 4 -sticky nsew

        # Menubutton
        ttk::style configure TMenubutton -padding {8 4 0 4}

        ttk::style element create Menubutton.button \
            image [list $images(button-rest) \
                disabled $images(button-disabled) \
                pressed $images(button-pressed) \
                active $images(button-hover) \
            ] -border 4 -sticky nsew

        ttk::style element create Menubutton.indicator image $images(arrow-down) -width 28 -sticky {}

        # OptionMenu
        ttk::style configure TOptionMenu -padding {8 4 0 4}

        ttk::style element create OptionMenu.button \
            image [list $images(button-rest) \
                disabled $images(button-disabled) \
                pressed $images(button-pressed) \
                active $images(button-hover) \
            ] -border 4 -sticky nsew

        ttk::style element create OptionMenu.indicator image $images(arrow-down) -width 28 -sticky {}

        # Accent.TButton
        ttk::style configure Accent.TButton -padding {8 4} -anchor center -foreground #000000

        ttk::style map Accent.TButton -foreground \
            [list pressed #25536a \
                disabled #a5a5a5]

        ttk::style element create AccentButton.button image \
            [list $images(button-accent-rest) \
                {selected disabled} $images(button-accent-disabled) \
                disabled $images(button-accent-disabled) \
                selected $images(button-accent-rest) \
                pressed $images(button-accent-pressed) \
                active $images(button-accent-hover) \
            ] -border 4 -sticky nsew

        # Titlebar.TButton
        ttk::style configure Titlebar.TButton -padding {8 4} -anchor center -foreground #ffffff

        ttk::style map Titlebar.TButton -foreground \
            [list disabled #6f6f6f \
                pressed #d1d1d1 \
                active #ffffff]

        ttk::style element create TitlebarButton.button image \
            [list $images(empty) \
                disabled $images(empty) \
                pressed $images(button-titlebar-pressed) \
                active $images(button-titlebar-hover) \
            ] -border 4 -sticky nsew

        # Close.Titlebar.TButton
        ttk::style configure Close.Titlebar.TButton -padding {8 4} -anchor center -foreground #ffffff

        ttk::style map Close.Titlebar.TButton -foreground \
            [list disabled #6f6f6f \
                pressed #e8bfbb \
                active #ffffff]

        ttk::style element create CloseButton.button image \
            [list $images(empty) \
                disabled $images(empty) \
                pressed $images(button-close-pressed) \
                active $images(button-close-hover) \
            ] -border 4 -sticky nsew

        # Checkbutton
        ttk::style configure TCheckbutton -padding 4

        ttk::style element create Checkbutton.indicator image \
            [list $images(check-unsel-rest) \
                {alternate disabled} $images(check-tri-disabled) \
                {selected disabled} $images(check-disabled) \
                disabled $images(check-unsel-disabled) \
                {pressed alternate} $images(check-tri-hover) \
                {active alternate} $images(check-tri-hover) \
                alternate $images(check-tri-rest) \
                {pressed selected} $images(check-hover) \
                {active selected} $images(check-hover) \
                selected $images(check-rest) \
                {pressed !selected} $images(check-unsel-pressed) \
                active $images(check-unsel-hover) \
            ] -width 26 -sticky w

        # Switch.TCheckbutton
        ttk::style element create Switch.indicator image \
            [list $images(switch-off-rest) \
                {selected disabled} $images(switch-on-disabled) \
                disabled $images(switch-off-disabled) \
                {pressed selected} $images(switch-on-pressed) \
                {active selected} $images(switch-on-hover) \
                selected $images(switch-on-rest) \
                {pressed !selected} $images(switch-off-pressed) \
                active $images(switch-off-hover) \
            ] -width 46 -sticky w

        # Toggle.TButton
        ttk::style configure Toggle.TButton -padding {8 4 8 4} -anchor center -foreground $colors(-fg)

        ttk::style map Toggle.TButton -foreground \
            [list {selected disabled} #a5a5a5 \
                {selected pressed} #d0d0d0 \
                selected #000000 \
                pressed #25536a \
                disabled #7a7a7a
            ]

        ttk::style element create ToggleButton.button image \
            [list $images(button-rest) \
                {selected disabled} $images(button-accent-disabled) \
                disabled $images(button-disabled) \
                {pressed selected} $images(button-rest) \
                {active selected} $images(button-accent-hover) \
                selected $images(button-accent-rest) \
                {pressed !selected} $images(button-accent-rest) \
                active $images(button-hover) \
            ] -border 4 -sticky nsew

        # Radiobutton
        ttk::style configure TRadiobutton -padding 4

        ttk::style element create Radiobutton.indicator image \
            [list $images(radio-unsel-rest) \
                {selected disabled} $images(radio-disabled) \
                disabled $images(radio-unsel-disabled) \
                {pressed selected} $images(radio-pressed) \
                {active selected} $images(radio-hover) \
                selected $images(radio-rest) \
                {pressed !selected} $images(radio-unsel-pressed) \
                active $images(radio-unsel-hover) \
            ] -width 26 -sticky w

        # Scrollbar
        ttk::style element create Horizontal.Scrollbar.trough image $images(scroll-hor-trough) -sticky ew -border 6
        ttk::style element create Horizontal.Scrollbar.thumb image $images(scroll-hor-thumb) -sticky ew -border 3

        ttk::style element create Horizontal.Scrollbar.rightarrow image $images(scroll-right) -sticky {} -width 12
        ttk::style element create Horizontal.Scrollbar.leftarrow image $images(scroll-left) -sticky {} -width 12

        ttk::style element create Vertical.Scrollbar.trough image $images(scroll-vert-trough) -sticky ns -border 6
        ttk::style element create Vertical.Scrollbar.thumb image $images(scroll-vert-thumb) -sticky ns -border 3

        ttk::style element create Vertical.Scrollbar.uparrow image $images(scroll-up) -sticky {} -height 12
        ttk::style element create Vertical.Scrollbar.downarrow image $images(scroll-down) -sticky {} -height 12

        # Scale
        ttk::style element create Horizontal.Scale.trough image $images(scale-trough-hor) \
            -border 5 -padding 0

        ttk::style element create Vertical.Scale.trough image $images(scale-trough-vert) \
            -border 5 -padding 0

        ttk::style element create Scale.slider \
            image [list $images(scale-thumb-rest) \
                disabled $images(scale-thumb-disabled) \
                pressed $images(scale-thumb-pressed) \
                active $images(scale-thumb-hover) \
            ] -sticky {}

        # Progressbar
        ttk::style element create Horizontal.Progressbar.trough image $images(progress-trough-hor) \
            -border 1 -sticky ew

        ttk::style element create Horizontal.Progressbar.pbar image $images(progress-pbar-hor) \
            -border 2 -sticky ew

        ttk::style element create Vertical.Progressbar.trough image $images(progress-trough-vert) \
            -border 1 -sticky ns

        ttk::style element create Vertical.Progressbar.pbar image $images(progress-pbar-vert) \
            -border 2 -sticky ns

        # Entry
        ttk::style configure TEntry -foreground $colors(-fg)

        ttk::style map TEntry -foreground \
            [list disabled #757575 \
                pressed #cfcfcf
            ]

        ttk::style element create Entry.field \
            image [list $images(entry-rest) \
                {focus hover !invalid} $images(entry-focus) \
                invalid $images(entry-invalid) \
                disabled $images(entry-disabled) \
                {focus !invalid} $images(entry-focus) \
                hover $images(entry-hover) \
            ] -border 5 -padding 8 -sticky nsew

        # Combobox
        ttk::style configure TCombobox -foreground $colors(-fg)

        ttk::style map TCombobox -foreground \
            [list disabled #757575 \
                pressed #cfcfcf
            ]

        ttk::style configure ComboboxPopdownFrame -borderwidth 1 -relief solid

        ttk::style map TCombobox -selectbackground [list \
            {readonly hover} $colors(-selectbg) \
            {readonly focus} $colors(-selectbg) \
        ] -selectforeground [list \
            {readonly hover} $colors(-selectfg) \
            {readonly focus} $colors(-selectfg) \
        ]

        ttk::style element create Combobox.field \
            image [list $images(entry-rest) \
                {readonly disabled} $images(button-disabled) \
                {readonly pressed} $images(button-pressed) \
                {readonly hover} $images(button-hover) \
                readonly $images(button-rest) \
                invalid $images(entry-invalid) \
                disabled $images(entry-disabled) \
                focus $images(entry-focus) \
                hover $images(entry-hover) \
            ] -border 5 -padding {8 8 28 8}

        ttk::style element create Combobox.arrow image $images(arrow-down) -width 35 -sticky {}

        # Spinbox
        ttk::style configure TSpinbox -foreground $colors(-fg)

        ttk::style map TSpinbox -foreground \
            [list disabled #757575 \
                pressed #cfcfcf
            ]

        ttk::style element create Spinbox.field \
            image [list $images(entry-rest) \
                invalid $images(entry-invalid) \
                disabled $images(entry-disabled) \
                focus $images(entry-focus) \
                hover $images(entry-hover) \
            ] -border 5 -padding {8 8 54 8} -sticky nsew

        ttk::style element create Spinbox.uparrow image $images(arrow-up) -width 35 -sticky {}
        ttk::style element create Spinbox.downarrow image $images(arrow-down) -width 35 -sticky {}

        # Sizegrip
        ttk::style element create Sizegrip.sizegrip image $images(sizegrip) \
            -sticky nsew

        # Separator
        ttk::style element create TSeparator.separator image $images(separator)

        # Card
        ttk::style element create Card.field image $images(card) \
            -border 10 -padding 4 -sticky nsew

        # Labelframe
        ttk::style element create Labelframe.border image $images(card) \
            -border 5 -padding 4 -sticky nsew

        # Notebook
        ttk::style configure TNotebook -padding 1

        ttk::style element create Notebook.border \
            image $images(notebook-border) -border 5 -padding 5

        ttk::style element create Notebook.client image $images(notebook)

        ttk::style element create Notebook.tab \
            image [list $images(tab-rest) \
                selected $images(tab-selected) \
                active $images(tab-hover) \
            ] -border 13 -padding {16 14 16 6} -height 32

        # Treeview
        ttk::style element create Treeview.field image $images(card) \
            -border 5

        ttk::style element create Treeheading.cell \
            image [list $images(treeheading-rest) \
                pressed $images(treeheading-pressed) \
                active $images(treeheading-hover)
            ] -border 5 -padding 15 -sticky nsew

        ttk::style element create Treeitem.indicator \
            image [list $images(arrow-right) \
                user2 $images(empty) \
                user1 $images(arrow-down) \
            ] -width 26 -sticky {}

        ttk::style configure Treeview -background $colors(-bg) -rowheight [expr {[font metrics font -linespace] + 2}]
        ttk::style map Treeview \
            -background [list selected #292929] \
            -foreground [list selected $colors(-selectfg)]

        # Panedwindow
        # Insane hack to remove clam's ugly sash
        ttk::style configure Sash -gripcount 0
    }
}

option add *tearOff 0

proc set_theme {mode} {
	if {$mode == "dark"} {
		ttk::style theme use "sun-valley-dark"

		array set colors {
		    -fg             "#ffffff"
		    -bg             "#1c1c1c"
		    -disabledfg     "#595959"
		    -selectfg       "#ffffff"
		    -selectbg       "#2f60d8"
		}

        ttk::style configure . \
            -background $colors(-bg) \
            -foreground $colors(-fg) \
            -troughcolor $colors(-bg) \
            -focuscolor $colors(-selectbg) \
            -selectbackground $colors(-selectbg) \
            -selectforeground $colors(-selectfg) \
            -insertwidth 1 \
            -insertcolor $colors(-fg) \
            -fieldbackground $colors(-selectbg) \
            -font {"Microsoft YaHei UI" 10} \
            -borderwidth 0 \
            -relief flat

        tk_setPalette \
        	background [ttk::style lookup . -background] \
            foreground [ttk::style lookup . -foreground] \
            highlightColor [ttk::style lookup . -focuscolor] \
            selectBackground [ttk::style lookup . -selectbackground] \
            selectForeground [ttk::style lookup . -selectforeground] \
            activeBackground [ttk::style lookup . -selectbackground] \
            activeForeground [ttk::style lookup . -selectforeground]

        ttk::style map . -foreground [list disabled $colors(-disabledfg)]

        option add *font [ttk::style lookup . -font]
        option add *Menu.selectcolor $colors(-fg)
        option add *Menu.background #2f2f2f

	} elseif {$mode == "light"} {
		ttk::style theme use "sun-valley-light"

		array set colors {
		    -fg             "#202020"
		    -bg             "#fafafa"
		    -disabledfg     "#a0a0a0"
		    -selectfg       "#ffffff"
		    -selectbg       "#2f60d8"
		}

        ttk::style configure . \
            -background $colors(-bg) \
            -foreground $colors(-fg) \
            -troughcolor $colors(-bg) \
            -focuscolor $colors(-selectbg) \
            -selectbackground $colors(-selectbg) \
            -selectforeground $colors(-selectfg) \
            -insertwidth 1 \
            -insertcolor $colors(-fg) \
            -fieldbackground $colors(-selectbg) \
            -font {"Microsoft YaHei UI" 10} \
            -borderwidth 0 \
            -relief flat

        tk_setPalette background [ttk::style lookup . -background] \
            foreground [ttk::style lookup . -foreground] \
            highlightColor [ttk::style lookup . -focuscolor] \
            selectBackground [ttk::style lookup . -selectbackground] \
            selectForeground [ttk::style lookup . -selectforeground] \
            activeBackground [ttk::style lookup . -selectbackground] \
            activeForeground [ttk::style lookup . -selectforeground]

        ttk::style map . -foreground [list disabled $colors(-disabledfg)]

        option add *font [ttk::style lookup . -font]
        option add *Menu.selectcolor $colors(-fg)
        option add *Menu.background #e7e7e7
	}
}
