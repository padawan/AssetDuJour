# ----------------------------------------------------------------------------
# AssetDuJour
# A Movable Type plugin to preselect today's date in the asset upload template.
# http://ubiquitic.com/software/assetdujour-movable-type-plugin.html
#
# Release 1.1 — 2010/12/15
# ----------------------------------------------------------------------------
# This free software is provided as-is WITHOUT ANY KIND OF GUARANTEE.
# You may use it for commercial or personal use.
# You can distribute or modify it, provided you keep this notice intact.
#
# Copyright (C) François Nonnenmacher, Ubiquitic. http://ubiquitic.com/
# ----------------------------------------------------------------------------

package AssetDuJour::Plugin;

use MT 4.2;

sub xfm {
	my ($cb, $app, $src) = @_;
	$$src = '<mt:loop name="extra_paths"><mt:var name="middle_path" value="$path" escape="html"></mt:loop>'.$$src;
	$$src =~ s/name="selected"/name="__last__"/;
}

1; # Bonjour !