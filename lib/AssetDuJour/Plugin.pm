# ----------------------------------------------------------------------------
# AssetDuJour
# A Movable Type plugin to preselect today's date in the asset upload template.
# http://ubiquitic.com/software/assetdujour-movable-type-plugin.html
#
# Release 1.0 — 2009/12/24
# ----------------------------------------------------------------------------
# This free software is provided as-is WITHOUT ANY KIND OF GUARANTEE.
# You may use it for commercial or personal use.
# You can distribute or modify it, provided you keep this notice intact.
#
# Copyright (C) François Nonnenmacher, Ubiquitic. http://ubiquitic.com/
# ----------------------------------------------------------------------------

package AssetDuJour::Plugin;

use MT 5.0;

sub xfm {
	my ($cb, $app, $src) = @_;
	$$src =~ s/name="selected"/name="__last__"/;
}

1; # Ah que coucou !